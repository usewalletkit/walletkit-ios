//
//  WalletKitEnvironment.swift
//  
//
//  Created by Pol Chen on 2023/10/31.
//

import Foundation

public enum WalletKitEnvironment {

    case testnet
    case mainnet

    var basePath: String {
        switch self {
        case .testnet:
            return "https://testnet.usewalletkit.com"
        case .mainnet:
            return "https://mainnet.usewalletkit.com"
        }
    }
}
