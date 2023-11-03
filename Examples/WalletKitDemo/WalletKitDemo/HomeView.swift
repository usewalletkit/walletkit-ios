//
//  ContentView.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/02.
//

import SwiftUI
import WalletKit

struct HomeView: View {

    @State private var userSession: Session? = WalletKit.users.currentSession
    @State private var walletList: [ListWalletsResponseItem] = []

    @State private var displayingError: Error?

    @State private var presentingSheet: Sheet?

    private enum Sheet: Identifiable {
        case createWallet

        var id: Int {
            hashValue
        }
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    if userSession != nil {
                        ForEach(walletList, id: \.id) { wallet in
                            Text("Wallet: \(wallet.name ?? "") / \(wallet.network.rawValue.capitalized) / \(wallet.address)")
                        }
                        Button {
                            presentingSheet = .createWallet
                        } label: {
                            HStack {
                                Image(systemName: "plus.square")
                                Text("Create a Wallet")
                            }
                        }
                    }
                }
                Section {
                    if let userSession {
                        Text("User ID: \(userSession.userId)")
                        Button(role: .destructive) {
                            print("Sign out")
                        } label: {
                            HStack {
                                Image(systemName: "rectangle.portrait.and.arrow.forward")
                                    .frame(width: 20)
                                Text("Log Out")
                            }
                        }
                    } else {
                        Button {
                            signInAnonymously()
                        } label: {
                            HStack {
                                Image(systemName: "person.and.background.dotted")
                                    .frame(width: 20)
                                Text("Sign in anonymously")
                            }
                        }
                        Button {
                            print("Sign in with email")
                        } label: {
                            HStack {
                                Image(systemName: "person.crop.square.filled.and.at.rectangle")
                                    .frame(width: 20)
                                Text("Sign in with email")
                            }
                        }
                    }
                }
                .onAppear {
                    listWallets()
                }
            }
            .navigationTitle("WalletKit")
            .sheet(item: $presentingSheet) { sheet in
                switch sheet {
                case .createWallet:
                    CreateWalletView(userID: userSession?.userId ?? "") { result in
                        switch result {
                        case .success:
                            listWallets()
                        case .failure(let error):
                            displayingError = error
                        }
                    }
                }
            }
        }
    }

    private func signInAnonymously() {
        WalletKit.users.usersLoginAnonymously { result in
            switch result {
            case .success(let session):
                userSession = session
            case .failure(let error):
                displayingError = error
            }
        }
    }

    private func listWallets() {
        WalletKit.wallets.walletsList { result in
            switch result {
            case .success(let list):
                walletList = list
            case .failure(let error):
                displayingError = error
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
