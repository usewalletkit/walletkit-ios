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

        let session = Session.fixture
        sessionManager.storeSession(session)
        XCTAssertNotNil(sessionManager.retrieveSession())
    }

    func testRetrieveSession() throws {
        XCTAssertNil(sessionManager.retrieveSession())

        let session = Session.fixture
        sessionManager.storeSession(session)
        let retrievedSession = sessionManager.retrieveSession()
        XCTAssertEqual(retrievedSession, Session.fixture)
    }
}

private extension Session {

    static let fixture: Session = .init(
        id: "TEST_SESSION_ID",
        createdAt: Date(),
        projectId: "TEST_PROJECT_ID",
        userId: "TEST_USER_ID",
        accessToken: "TEST_ACCESS_TOKEN",
        accessTokenExpiresAt: Date(),
        refreshToken: "TEST_REFRESH_TOKEN",
        refreshTokenExpiresAt: Date()
    )
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
