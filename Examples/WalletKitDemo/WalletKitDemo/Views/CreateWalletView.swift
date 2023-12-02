//
//  CreateWalletView.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/03.
//

import SwiftUI
import WalletKit

struct CreateWalletView: View {

    @Environment(\.dismiss) private var dismiss

    @State private var network: Network = .base
    @State private var name: String = ""
    @State private var pin: String = ""

    private let userID: String
    private let handleCreateWallet: (Result<Wallet, ErrorResponse>) -> Void

    init(
        userID: String,
        handleCreateWallet: @escaping (Result<Wallet, ErrorResponse>) -> Void
    ) {
        self.userID = userID
        self.handleCreateWallet = handleCreateWallet
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Network:", selection: $network) {
                        ForEach(Network.allCases, id: \.self) { network in
                            Text(network.rawValue.capitalized).tag(network)
                        }
                    }
                    LabeledContent("Name:") {
                        TextField("Wallet name", text: $name)
                            .multilineTextAlignment(.trailing)
                    }
                    LabeledContent("PIN:") {
                        SecureField("6-digit PIN", text: $pin)
                            .multilineTextAlignment(.trailing)
                    }
                }

                Button {
                    createWallet()
                } label: {
                    HStack {
                        Spacer()
                        Text("Create Wallet")
                            .bold()
                        Spacer()
                    }
                }
            }
            .navigationTitle("New Wallet")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

// MARK: - Private Methods

extension CreateWalletView {

    private func createWallet() {
        let request = CreateWalletRequest(
            network: network,
            name: name,
            ownerId: userID,
            controlMode: .user,
            userPin: pin
        )
        WalletKit.wallets.walletsCreate(createWalletRequest: request) { result in
            handleCreateWallet(result)
            dismiss()
        }
    }
}

// MARK: - Previews

struct CreateWalletView_Previews: PreviewProvider {

    static var previews: some View {
        CreateWalletView(
            userID: "USER_ID",
            handleCreateWallet: { _ in }
        )
    }
}
