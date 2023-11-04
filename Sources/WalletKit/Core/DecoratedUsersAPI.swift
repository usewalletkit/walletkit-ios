//
//  DecoratedUsersAPI.swift
//  
//
//  Created by Pol Chen on 2023/10/30.
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public class DecoratedUsersAPI: UsersAPI {

    /// Returns the current session, if present.
    ///
    /// Only available when `tokenSource` is configured as the default `.walletkit`.
    /// For other `tokenSource`, developers should get the session from the corresponding auth provider.
    public static var currentSession: Session? {
        guard WalletKitAPI.tokenSource == .walletkit else {
            return nil
        }

        let sessionManager = SessionManager()
        return sessionManager.retrieveSession()
    }

    /// Logs out the current user session.
    ///
    /// Only available when `tokenSource` is configured as the default `.walletkit`.
    /// For other `tokenSource`, developers should log out the session from the corresponding auth provider.
    public class func usersLogout() {
        let sessionManager = SessionManager()
        sessionManager.removeSession()
    }

    @discardableResult
    public override class func usersLoginAnonymously(apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((Result<Session, ErrorResponse>) -> Void)) -> RequestTask {
        let modifiedCompletion: ((Result<Session, ErrorResponse>) -> Void) = { result in
            switch result {
            case .success(let session):
                SessionManager().storeSession(session)
            case .failure:
                break
            }
            completion(result)
        }
        return super.usersLoginAnonymously(apiResponseQueue: apiResponseQueue, completion: modifiedCompletion)
    }

    @discardableResult
    public override class func usersVerifyLogin(usersVerifyLoginRequest: UsersVerifyLoginRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((Result<Session, ErrorResponse>) -> Void)) -> RequestTask {
        let modifiedCompletion: ((Result<Session, ErrorResponse>) -> Void) = { result in
            switch result {
            case .success(let session):
                SessionManager().storeSession(session)
            case .failure:
                break
            }
            completion(result)
        }
        return super.usersVerifyLogin(usersVerifyLoginRequest: usersVerifyLoginRequest, apiResponseQueue: apiResponseQueue, completion: modifiedCompletion)
    }
}
