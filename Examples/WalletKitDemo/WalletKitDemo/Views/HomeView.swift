//
//  ContentView.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/02.
//

import SwiftUI
import WalletKit

struct HomeView: View {

    @State private var isRequesting: Bool = false
    @State private var userSession: Session? = nil
    @State private var walletList: [Wallet] = []
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
                    CreateWalletView(userID: userSession?.userId ?? "") { result in
                        handleCreateWallet(result: result)
                    }
                case .signInWithEmail:
                    SignInWithEmailView()
                }
            }
        }
    }
}

// MARK: - Private Methods

extension HomeView {

    private func loadData() {
        userSession = WalletKit.users.currentSession
        if userSession != nil {
            listWallets()
        }
    }

    private func signInAnonymously() {
        isRequesting = true
        WalletKit.users.usersLoginAnonymously { result in
            isRequesting = false
            switch result {
            case .success(let session):
                userSession = session
            case .failure(let error):
                displayingError = error.localizedDescription
            }
        }
    }

    private func signOut() {
        WalletKit.users.usersLogout { _ in }
        userSession = nil
        walletList = []
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

    private func handleCreateWallet(result: Result<Wallet, ErrorResponse>) {
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
                Text("This is a demo app for WalletKit, in which you can explore how to sign in / out a user and create / display wallets.")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct SignedInView: View {

    var userSession: Session
    var walletList: [Wallet]
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
            Text("User ID: \(userSession.userId)")
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
