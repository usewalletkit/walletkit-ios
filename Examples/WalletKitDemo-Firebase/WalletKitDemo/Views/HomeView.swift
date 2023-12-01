//
//  ContentView.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/02.
//

import SwiftUI
import WalletKit
import FirebaseCore
import FirebaseAuth

struct HomeView: View {

    @State private var isRequesting: Bool = false
    @State private var userSession: User? = nil
    @State private var walletList: [ListWalletsResponseItem] = []
    @State private var presentingSheet: Sheet?
    @State private var displayingError: String?

    private enum Sheet: Identifiable {
        case createWallet
        case signInWithEmail

        var id: Int {
            hashValue
        }
    }

    var body: some View {
        NavigationView {
            Form {
                if isRequesting {
                    LoadingSection()
                }

                if let displayingError {
                    ErrorSection(message: displayingError)
                }

                IntroSection()

                if let userSession {
                    SignedInView(
                        userSession: userSession,
                        walletList: walletList,
                        handleCreateWallet: {
                            presentingSheet = .createWallet
                        },
                        handleSignOut: {
                            signOut()
                        }
                    )
                } else {
                    SignedOutView(
                        handleSignInAnonymously: {
                            signInAnonymously()
                        },
                        handleSignInWithEmail: {
                            presentingSheet = .signInWithEmail
                        }
                    )
                }
            }
            .navigationTitle("WalletKit")
            .onAppear(perform: loadData)
            .sheet(item: $presentingSheet, onDismiss: loadData) { sheet in
                switch sheet {
                case .createWallet:
                    CreateWalletView(userID: userSession?.uid ?? "") { result in
                        handleCreateWallet(result: result)
                    }
                case .signInWithEmail:
                    SignInWithEmailView(userSession: $userSession)
                }
            }
        }
    }
}

// MARK: - Private Methods

extension HomeView {

    private func loadData() {
        userSession = Auth.auth().currentUser
        if userSession != nil {
            listWallets()
        }
    }

    private func signInAnonymously() {
        isRequesting = true
        Auth.auth().signInAnonymously { result, error in
            isRequesting = false

            if let error {
                displayingError = error.localizedDescription
                return
            }

            userSession = result?.user
        }

    }

    private func signOut() {
        do {
            try Auth.auth().signOut()
            userSession = nil
            walletList = []
        } catch {
            displayingError = error.localizedDescription
        }
    }

    private func listWallets() {
        WalletKit.wallets.walletsList { result in
            switch result {
            case .success(let list):
                walletList = list
            case .failure(let error):
                displayingError = error.localizedDescription
            }
        }
    }

    private func handleCreateWallet(result: Result<CreateWalletResponse, ErrorResponse>) {
        switch result {
        case .success:
            listWallets()
        case .failure(let error):
            displayingError = error.localizedDescription
        }
    }
}

// MARK: - Views

struct IntroSection: View {

    var body: some View {
        Section {
            HStack(alignment: .top) {
                Image(systemName: "star.bubble.fill")
                    .foregroundColor(.yellow)
                    .frame(width: 20)
                Text("This is a demo app for WalletKit, in which you can explore how to sign in / out a user via Firebase and create / display wallets.")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct SignedInView: View {

    var userSession: User
    var walletList: [ListWalletsResponseItem]
    var handleCreateWallet: () -> Void
    var handleSignOut: () -> Void

    var body: some View {
        Section {
            ForEach(walletList, id: \.id) { wallet in
                Text("Wallet: \(wallet.name ?? "") / \(wallet.network.rawValue.capitalized) / \(wallet.address)")
            }
            Button {
                handleCreateWallet()
            } label: {
                HStack {
                    Image(systemName: "plus.square")
                        .frame(width: 20)
                    Text("Create a Wallet")
                }
            }
        }

        Section {
            Text("User ID: \(userSession.uid)")
            Button(role: .destructive) {
                handleSignOut()
            } label: {
                HStack {
                    Image(systemName: "rectangle.portrait.and.arrow.forward")
                        .frame(width: 20)
                    Text("Sign Out")
                }
            }
        }
    }
}

struct SignedOutView: View {

    var handleSignInAnonymously: () -> Void
    var handleSignInWithEmail: () -> Void

    var body: some View {
        Section {
            Button {
                handleSignInAnonymously()
            } label: {
                HStack {
                    Image(systemName: "person.and.background.dotted")
                        .frame(width: 20)
                    Text("Sign In Anonymously")
                }
            }
            Button {
                handleSignInWithEmail()
            } label: {
                HStack {
                    Image(systemName: "person.crop.square.filled.and.at.rectangle")
                        .frame(width: 20)
                    Text("Sign In with Email")
                }
            }
        }
    }
}

// MARK: - Previews

struct HomeView_Previews: PreviewProvider {

    static var previews: some View {
        HomeView()
    }
}
