//
//  WalletKitTokenProvider.swift
//  
//
//  Created by Pol Chen on 2023/10/31.
//

import Foundation

final class WalletKitTokenProvider: TokenProviding {

    func getAccessToken(completion: @escaping ((String?) -> Void)) {
        let sessionManager = WalletKitAPI.sessionManager
        guard let session = sessionManager.retrieveSession() else {
            completion(nil)
            return
        }

        guard sessionManager.shouldRefreshSession(session) else {
            completion(session.accessToken)
            return
        }

        let refreshTokenRequest = UsersRefreshTokenRequest(
            sessionId: session.id,
            refreshToken: session.refreshToken
        )
        UsersAPI.usersRefreshToken(usersRefreshTokenRequest: refreshTokenRequest) { result in
            switch result {
            case .success(let session):
                sessionManager.storeSession(session)
                completion(session.accessToken)
            case .failure:
                completion(nil)
            }
        }
    }
}
