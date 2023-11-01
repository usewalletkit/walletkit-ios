//
//  SessionManagerTests.swift
//  
//
//  Created by Pol Chen on 2023/10/30.
//

import XCTest
@testable import WalletKit

final class SessionManagerTests: XCTestCase {

    private let sessionKey: String = "com.usewalletkit.credentials.test"
    private var keychainManager: KeychainManaging!
    private var sessionManager: SessionManager!

    override func setUp() {
        super.setUp()
        keychainManager = MockKeychainManager()
        sessionManager = SessionManager(sessionKey: sessionKey, keychainManager: keychainManager)
    }

    override func tearDown() {
        super.tearDown()
    }

    func testStoreSession() throws {
        XCTAssertNil(sessionManager.retrieveSession())

        let session = Session.fixture()
        sessionManager.storeSession(session)
        XCTAssertNotNil(sessionManager.retrieveSession())
    }

    func testRetrieveSession() throws {
        XCTAssertNil(sessionManager.retrieveSession())

        let session = Session.fixture()
        sessionManager.storeSession(session)
        let retrievedSession = sessionManager.retrieveSession()
        XCTAssertEqual(retrievedSession, session)
    }

    func testShouldRefreshSession() throws {
        let base: TimeInterval = Session.expirationThreshold

        var session = Session.fixture(
            accessTokenExpiresAt: Date(timeIntervalSinceNow: base + 5),
            refreshTokenExpiresAt: Date(timeIntervalSinceNow: base + 5)
        )
        XCTAssertFalse(sessionManager.shouldRefreshSession(session))

        session = Session.fixture(
            accessTokenExpiresAt: Date(timeIntervalSinceNow: base),
            refreshTokenExpiresAt: Date(timeIntervalSinceNow: base)
        )
        XCTAssertTrue(sessionManager.shouldRefreshSession(session))

        session = Session.fixture(
            accessTokenExpiresAt: Date(timeIntervalSinceNow: base - 5),
            refreshTokenExpiresAt: Date(timeIntervalSinceNow: base - 5)
        )
        XCTAssertTrue(sessionManager.shouldRefreshSession(session))

        session = Session.fixture(
            accessTokenExpiresAt: Date(timeIntervalSinceNow: base + 5),
            refreshTokenExpiresAt: Date(timeIntervalSinceNow: base - 5)
        )
        XCTAssertTrue(sessionManager.shouldRefreshSession(session))

        session = Session.fixture(
            accessTokenExpiresAt: Date(timeIntervalSinceNow: base - 5),
            refreshTokenExpiresAt: Date(timeIntervalSinceNow: base + 5)
        )
        XCTAssertTrue(sessionManager.shouldRefreshSession(session))
    }

    func testDateIsExpiringSoon() throws {
        let base: TimeInterval = Session.expirationThreshold

        var date = Date(timeIntervalSinceNow: base + 5)
        XCTAssertFalse(date.isExpiringSoon)

        date = Date(timeIntervalSinceNow: base)
        XCTAssertTrue(date.isExpiringSoon)

        date = Date(timeIntervalSinceNow: base - 5)
        XCTAssertTrue(date.isExpiringSoon)
    }
}

private extension Session {

    static func fixture(
        id: String = "TEST_SESSION_ID",
        createdAt: Date = Date(),
        projectId: String = "TEST_PROJECT_ID",
        userId: String = "TEST_USER_ID",
        accessToken: String = "TEST_ACCESS_TOKEN",
        accessTokenExpiresAt: Date = Date(),
        refreshToken: String = "TEST_REFRESH_TOKEN",
        refreshTokenExpiresAt: Date = Date()
    ) -> Session {
        return .init(
            id: id, 
            createdAt: createdAt, 
            projectId: projectId, 
            userId: userId, 
            accessToken: accessToken, 
            accessTokenExpiresAt: accessTokenExpiresAt, 
            refreshToken: refreshToken, 
            refreshTokenExpiresAt: refreshTokenExpiresAt
        )
    }
}

private final class MockKeychainManager: KeychainManaging {

    private var store: [String: Data] = .init()

    func storeData(_ data: Data, for key: String) {
        store[key] = data
    }

    func retrieveData(for key: String) -> Data? {
        return store[key]
    }
}
