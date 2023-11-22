//
//  WalletKitEnvironmentTests.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import XCTest
@testable import WalletKit

final class WalletKitEnvironmentTests: XCTestCase {

    func testTestnetBasePath() throws {
        let env = WalletKitEnvironment.testnet
        XCTAssertEqual(env.basePath, "https://testnet.usewalletkit.com")
    }

    func testMainnetBasePath() throws {
        let env = WalletKitEnvironment.mainnet
        XCTAssertEqual(env.basePath, "https://mainnet.usewalletkit.com")
    }
}
