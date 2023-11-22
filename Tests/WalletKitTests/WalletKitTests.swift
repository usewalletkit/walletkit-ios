//
//  WalletKitTests.swift
//
//
//  Created by Pol Chen on 2023/11/01.
//

import XCTest
@testable import WalletKit

final class WalletKitTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
        WalletKitAPI.resetConfiguration()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        WalletKitAPI.resetConfiguration()
    }

    func testConfigureBeforeConfiguration() throws {
        XCTAssertEqual(WalletKitAPI.customHeaders.count, 0)
        XCTAssertEqual(WalletKitAPI.basePath, WalletKitEnvironment.testnet.basePath)
        XCTAssertTrue(WalletKitAPI.requestBuilderFactory is URLSessionRequestBuilderFactory)
        XCTAssertEqual(WalletKitAPI.tokenSource, .walletkit)
        XCTAssertTrue(WalletKitAPI.tokenProvider is WalletKitTokenProvider)
    }

    func testConfigureWithProjectIDOnly() throws {
        let projectID = "USE_WALLET_KIT"
        WalletKit.configure(projectID: projectID)

        XCTAssertEqual(WalletKitAPI.customHeaders.count, 1)
        let header = try XCTUnwrap(WalletKitAPI.customHeaders.first)
        XCTAssertEqual(header.key, "X-WalletKit-Project-ID")
        XCTAssertEqual(header.value, projectID)

        XCTAssertEqual(WalletKitAPI.basePath, WalletKitEnvironment.testnet.basePath)
        XCTAssertTrue(WalletKitAPI.requestBuilderFactory is WalletKitURLSessionRequestBuilderFactory)
        XCTAssertEqual(WalletKitAPI.tokenSource, .walletkit)
        XCTAssertTrue(WalletKitAPI.tokenProvider is WalletKitTokenProvider)
    }

    func testConfigureWithMainnetEnvironment() throws {
        let projectID = "USE_WALLET_KIT"
        WalletKit.configure(
            projectID: projectID,
            environment: .mainnet
        )

        XCTAssertEqual(WalletKitAPI.customHeaders.count, 1)
        let header = try XCTUnwrap(WalletKitAPI.customHeaders.first)
        XCTAssertEqual(header.key, "X-WalletKit-Project-ID")
        XCTAssertEqual(header.value, projectID)

        XCTAssertEqual(WalletKitAPI.basePath, WalletKitEnvironment.mainnet.basePath)
        XCTAssertTrue(WalletKitAPI.requestBuilderFactory is WalletKitURLSessionRequestBuilderFactory)
        XCTAssertEqual(WalletKitAPI.tokenSource, .walletkit)
        XCTAssertTrue(WalletKitAPI.tokenProvider is WalletKitTokenProvider)
    }

    func testConfigureWithWalletKitTokenSource() throws {
        let projectID = "USE_WALLET_KIT"
        WalletKit.configure(
            projectID: projectID,
            environment: .mainnet,
            tokenSource: .walletkit
        )

        XCTAssertEqual(WalletKitAPI.customHeaders.count, 1)
        let header = try XCTUnwrap(WalletKitAPI.customHeaders.first)
        XCTAssertEqual(header.key, "X-WalletKit-Project-ID")
        XCTAssertEqual(header.value, projectID)

        XCTAssertEqual(WalletKitAPI.basePath, WalletKitEnvironment.mainnet.basePath)
        XCTAssertTrue(WalletKitAPI.requestBuilderFactory is WalletKitURLSessionRequestBuilderFactory)
        XCTAssertEqual(WalletKitAPI.tokenSource, .walletkit)
        XCTAssertTrue(WalletKitAPI.tokenProvider is WalletKitTokenProvider)
    }

    func testConfigureWithOtherTokenSource() throws {
        let projectID = "USE_WALLET_KIT"
        WalletKit.configure(
            projectID: projectID,
            environment: .mainnet,
            tokenSource: .supabase,
            tokenProvider: MockTokenProvider()
        )

        XCTAssertEqual(WalletKitAPI.customHeaders.count, 1)
        let header = try XCTUnwrap(WalletKitAPI.customHeaders.first)
        XCTAssertEqual(header.key, "X-WalletKit-Project-ID")
        XCTAssertEqual(header.value, projectID)

        XCTAssertEqual(WalletKitAPI.basePath, WalletKitEnvironment.mainnet.basePath)
        XCTAssertTrue(WalletKitAPI.requestBuilderFactory is WalletKitURLSessionRequestBuilderFactory)
        XCTAssertEqual(WalletKitAPI.tokenSource, .supabase)
        XCTAssertTrue(WalletKitAPI.tokenProvider is MockTokenProvider)
    }
}
