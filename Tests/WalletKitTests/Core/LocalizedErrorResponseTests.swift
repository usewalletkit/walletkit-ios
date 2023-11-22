//
//  LocalizedErrorResponseTests.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import XCTest
import WalletKit

final class LocalizedErrorResponseTests: XCTestCase {

    func testErrorDescription() throws {
        let error = MockError.somethingWentWrong
        let errorResponse = ErrorResponse.error(42, nil, nil, error)
        XCTAssertEqual(errorResponse.errorDescription, error.localizedDescription)
    }
}
