//
//  SignInWithEmailView.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/04.
//

import SwiftUI
import WalletKit

struct SignInWithEmailView: View {

    @Environment(\.dismiss) private var dismiss

    @State private var isRequesting: Bool = false
    @State private var isVerifying: Bool = false
    @State private var email: String = ""
    @State private var code: String = ""
    @State private var userID: String?
    @State private var displayingError: String?

    var body: some View {
        NavigationView {
            Form {
                if isRequesting {
                    LoadingSection()
                }

                if let displayingError {
                    ErrorSection(message: displayingError)
                }

                if isVerifying {
                    VerificationCodeView(
                        code: $code,
                        handleVerifyCode: verifyCode
                    )
                } else {
                    EmailView(
                        email: $email,
                        handleRequestCode: requestCode
                    )
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

    private func requestCode() {
        displayingError = nil
        isRequesting = true
        let request = UsersLoginWithEmailRequest(email: email)
        WalletKit.users.usersLoginWithEmail(usersLoginWithEmailRequest: request) { result in
            isRequesting = false
            switch result {
            case .success(let response):
                isVerifying = true
                userID = response.userId
            case .failure(let error):
                isVerifying = false
                displayingError = error.localizedDescription
            }
        }
    }

    private func verifyCode() {
        guard let userID else {
            isVerifying = false
            displayingError = "Something went wrong."
            return
        }

        isRequesting = true
        let request = UsersVerifyLoginRequest(userId: userID, verificationCode: code)
        WalletKit.users.usersVerifyLogin(usersVerifyLoginRequest: request) { result in
            isRequesting = false
            switch result {
            case .success:
                dismiss()
            case .failure(let error):
                isVerifying = false
                displayingError = error.localizedDescription
                code = ""
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

struct VerificationCodeView: View {

    @Binding var code: String
    var handleVerifyCode: () -> Void

    var body: some View {
        Section {
            HStack(alignment: .top) {
                Image(systemName: "info.bubble.fill")
                    .foregroundColor(.green)
                    .frame(width: 20)
                Text("An email with a verification code was just sent to your email. Please input the code to finish sign-in.")
                    .foregroundColor(.secondary)
            }
        }
        Section {
            LabeledContent("Verification Code:") {
                TextField("4-digit code", text: $code)
                    .multilineTextAlignment(.trailing)
                    .keyboardType(.numberPad)
            }
        }
        Button {
            handleVerifyCode()
        } label: {
            HStack {
                Spacer()
                Text("Sign In")
                    .bold()
                Spacer()
            }
        }
    }
}

// MARK: - Previews

struct SignInWithEmailView_Previews: PreviewProvider {

    static var previews: some View {
        SignInWithEmailView()
    }
}
