//
//  WalletKitAPIToken.swift
//  
//
//  Created by Pol Chen on 2023/11/01.
//

import Foundation

extension WalletKitAPI {

    static var tokenSource: TokenSource = .walletkit
    static var tokenProvider: TokenProviding = WalletKitTokenProvider()
    static var sessionManager: SessionManager = SessionManager()
}
