//
//  SignInWithEmailView.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/12/01.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

struct SignInWithEmailView: View {

    @Environment(\.dismiss) private var dismiss

    @State private var isRequesting: Bool = false
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var displayingError: String?

    @Binding var userSession: User?

    var body: some View {
        NavigationView {
            Form {
                if isRequesting {
                    LoadingSection()
                }

                if let displayingError {
                    ErrorSection(message: displayingError)
                }

                Section {
                    LabeledContent("Email:") {
                        TextField("Your email address", text: $email)
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.emailAddress)
                    }
                    LabeledContent("Password:") {
                        SecureField("Your password", text: $password)
                            .multilineTextAlignment(.trailing)
                    }
                }
                Button {
                    signIn()
                } label: {
                    HStack {
                        Spacer()
                        Text("Sign In")
                            .bold()
                        Spacer()
                    }
                }
            }
            .navigationTitle("Sign In")
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

extension SignInWithEmailView {

    private func signIn() {
        isRequesting = true
        Task {
            do {
                try await Auth.auth().signIn(withEmail: email, password: password)
                userSession = Auth.auth().currentUser
                isRequesting = false
                dismiss()
            } catch {
                isRequesting = false
                displayingError = error.localizedDescription
            }
        }
    }
}

// MARK: - Views

struct EmailView: View {

    @Binding var email: String
    var handleRequestCode: () -> Void

    var body: some View {
        Section {
            LabeledContent("Email:") {
                TextField("Your email address", text: $email)
                    .multilineTextAlignment(.trailing)
                    .keyboardType(.emailAddress)
            }
        }
        Button {
            handleRequestCode()
        } label: {
            HStack {
                Spacer()
                Text("Continue")
                    .bold()
                Spacer()
            }
        }
    }
}

// MARK: - Previews

struct SignInWithEmailView_Previews: PreviewProvider {

    static var previews: some View {
        SignInWithEmailView(userSession: .constant(nil))
    }
}
