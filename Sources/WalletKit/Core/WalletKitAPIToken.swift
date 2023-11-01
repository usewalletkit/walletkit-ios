//
//  WalletKitAPIToken.swift
//  
//
//  Created by Pol Chen on 2023/11/01.
//

import Foundation

extension WalletKitAPI {

    public static var tokenSource: TokenSource = .walletkit
    public static var tokenProvider: TokenProviding = WalletKitTokenProvider()
}
