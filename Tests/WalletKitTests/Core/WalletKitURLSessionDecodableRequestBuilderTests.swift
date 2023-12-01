//
//  WalletKitURLSessionDecodableRequestBuilderTests.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import XCTest
@testable import WalletKit

final class WalletKitURLSessionDecodableRequestBuilderTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
        WalletKitAPI.tokenProvider = MockTokenProvider()
    }

    override func tearDownWithError() throws {
        WalletKitAPI.resetConfiguration()
        try super.tearDownWithError()
    }

    func testExecuteNotRequiresAuthentication() throws {
        let requestBuilder = WalletKitURLSessionDecodableRequestBuilder<MockModel>(
            method: "POST",
            URLString: "",
            parameters: nil,
            requiresAuthentication: false
        )

        XCTAssertEqual(requestBuilder.headers.count, 0)

        _ = requestBuilder.execute { _ in }

        XCTAssertEqual(requestBuilder.headers.count, 0)
    }

    func testExecuteRequiresAuthentication() throws {
        let requestBuilder = WalletKitURLSessionDecodableRequestBuilder<MockModel>(
            method: "POST",
            URLString: "",
            parameters: nil,
            requiresAuthentication: true
        )

        XCTAssertEqual(requestBuilder.headers.count, 0)

        _ = requestBuilder.execute { _ in }

        let headers = requestBuilder.headers
        XCTAssertNotEqual(headers.count, 0)
        let authHeader = try XCTUnwrap(headers.first(where: { $0.key == "Authorization" }))
        XCTAssertEqual(authHeader.value, "Bearer MOCK_ACCESS_TOKEN")
        let tokenSourceHeader = try XCTUnwrap(headers.first(where: { $0.key == "X-WalletKit-Token-Source" }))
        XCTAssertEqual(tokenSourceHeader.value, WalletKitAPI.tokenProvider.tokenSource.rawValue)
    }
}
