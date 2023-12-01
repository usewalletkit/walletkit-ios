//
//  FirebaseTokenProvider.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/10/31.
//

import Foundation
import WalletKit
import FirebaseCore
import FirebaseAuth

final class FirebaseTokenProvider: TokenProviding {

    let tokenSource: TokenSource = .firebase

    func getAccessToken(completion: @escaping ((String?) -> Void)) {
        guard let user = Auth.auth().currentUser else {
            completion(nil)
            return
        }

        user.getIDToken { accessToken, error in
            if error != nil {
                completion(nil)
                return
            }
            completion(accessToken)
        }
    }
}
