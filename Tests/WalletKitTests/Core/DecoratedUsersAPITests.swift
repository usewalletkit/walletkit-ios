//
//  DecoratedUsersAPITests.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import XCTest
@testable import WalletKit

final class DecoratedUsersAPITests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
        WalletKitAPI.requestBuilderFactory = MockRequestBuilderFactory()
        WalletKitAPI.sessionManager = SessionManager(keychainManager: MockKeychainManager())
    }

    override func tearDownWithError() throws {
        WalletKitAPI.resetConfiguration()
        try super.tearDownWithError()
    }

    func testCurrentSession() {
        XCTAssertNil(DecoratedUsersAPI.currentSession)

        DecoratedUsersAPI.usersLoginAnonymously { result in
            switch result {
            case .success(let session):
                XCTAssertEqual(session.id, "TEST_SESSION_ID")
                XCTAssertNotNil(DecoratedUsersAPI.currentSession)
                XCTAssertEqual(DecoratedUsersAPI.currentSession, session)
            case .failure:
                XCTFail()
            }
        }
    }

    func testLogout() {
        XCTAssertNil(DecoratedUsersAPI.currentSession)

        DecoratedUsersAPI.usersLoginAnonymously { result in
            switch result {
            case .success(let session):
                XCTAssertEqual(session.id, "TEST_SESSION_ID")
                XCTAssertNotNil(DecoratedUsersAPI.currentSession)
                XCTAssertEqual(DecoratedUsersAPI.currentSession, session)
            case .failure:
                XCTFail()
            }
        }

        XCTAssertNotNil(DecoratedUsersAPI.currentSession)

        DecoratedUsersAPI.usersLogout { result in
            switch result {
            case .success:
                XCTAssertNil(DecoratedUsersAPI.currentSession)
            case .failure:
                XCTFail()
            }
        }
    }

    func testLoginAnonymously() {
        XCTAssertNil(DecoratedUsersAPI.currentSession)

        DecoratedUsersAPI.usersLoginAnonymously { result in
            switch result {
            case .success(let session):
                XCTAssertEqual(session.id, "TEST_SESSION_ID")
                XCTAssertNotNil(DecoratedUsersAPI.currentSession)
                XCTAssertEqual(DecoratedUsersAPI.currentSession, session)
            case .failure:
                XCTFail()
            }
        }
    }

    func testVerifyLogin() {
        XCTAssertNil(DecoratedUsersAPI.currentSession)

        DecoratedUsersAPI.usersVerifyLogin(usersVerifyLoginRequest: .init()) { result in
            switch result {
            case .success(let session):
                XCTAssertEqual(session.id, "TEST_SESSION_ID")
                XCTAssertNotNil(DecoratedUsersAPI.currentSession)
                XCTAssertEqual(DecoratedUsersAPI.currentSession, session)
            case .failure:
                XCTFail()
            }
        }
    }
}
