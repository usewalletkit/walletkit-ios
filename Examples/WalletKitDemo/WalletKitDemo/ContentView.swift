//
//  ContentView.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/02.
//

import SwiftUI
import WalletKit

struct ContentView: View {

    @State private var userSession: Session?
    @State private var displayingError: Error?

    var body: some View {
        NavigationView {
            Form {
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
            }
            .navigationTitle("WalletKit")
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
