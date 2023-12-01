//
//  WalletKitAPI.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import Foundation
@testable import WalletKit

extension WalletKitAPI {

    static func resetConfiguration() {
        WalletKitAPI.basePath = "https://testnet.usewalletkit.com"
        WalletKitAPI.customHeaders = [:]
        WalletKitAPI.requestBuilderFactory = URLSessionRequestBuilderFactory()
        WalletKitAPI.tokenProvider = WalletKitTokenProvider()
        WalletKitAPI.sessionManager = SessionManager()
    }
}
