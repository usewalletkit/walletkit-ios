//
//  WalletKitTokenProviderTests.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import XCTest
@testable import WalletKit

final class WalletKitTokenProviderTests: XCTestCase {

    private var tokenProvider: WalletKitTokenProvider!

    override func setUpWithError() throws {
        try super.setUpWithError()
        WalletKitAPI.requestBuilderFactory = MockRequestBuilderFactory()
        WalletKitAPI.sessionManager = SessionManager(keychainManager: MockKeychainManager())
        tokenProvider = WalletKitTokenProvider()
    }

    override func tearDownWithError() throws {
        WalletKitAPI.resetConfiguration()
        try super.tearDownWithError()
    }

    func testTokenSource() {
        XCTAssertEqual(tokenProvider.tokenSource, .walletkit)
    }

    func testGetAccessTokenNil() {
        let sessionManager = WalletKitAPI.sessionManager
        sessionManager.removeSession()
        XCTAssertNil(sessionManager.retrieveSession())

        tokenProvider.getAccessToken { token in
            XCTAssertNil(token)
        }
    }

    func testGetAccessTokenValid() {
        let sessionManager = WalletKitAPI.sessionManager
        let base: TimeInterval = Session.expirationThreshold

        let session = Session.fixture(
            accessToken: "VALID_ACCESS_TOKEN",
            accessTokenExpiresAt: Date(timeIntervalSinceNow: base + 5),
            refreshTokenExpiresAt: Date(timeIntervalSinceNow: base + 5)
        )
        XCTAssertFalse(sessionManager.shouldRefreshSession(session))
        sessionManager.storeSession(session)

        tokenProvider.getAccessToken { token in
            XCTAssertEqual(token, session.accessToken)
            XCTAssertEqual(token, "VALID_ACCESS_TOKEN")
        }
    }

    func testGetAccessTokenRefreshed() {
        let sessionManager = WalletKitAPI.sessionManager
        let base: TimeInterval = Session.expirationThreshold

        let session = Session.fixture(
            accessToken: "EXPIRED_ACCESS_TOKEN",
            accessTokenExpiresAt: Date(timeIntervalSinceNow: base - 5),
            refreshTokenExpiresAt: Date(timeIntervalSinceNow: base + 5)
        )
        XCTAssertTrue(sessionManager.shouldRefreshSession(session))
        sessionManager.storeSession(session)

        tokenProvider.getAccessToken { token in
            XCTAssertNotEqual(token, session.accessToken)
            XCTAssertEqual(token, "TEST_ACCESS_TOKEN")
        }
    }
}
