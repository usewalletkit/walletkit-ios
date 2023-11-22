//
//  MockTokenProvider.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import Foundation
import WalletKit

final class MockTokenProvider: TokenProviding {

    func getAccessToken(completion: @escaping ((String?) -> Void)) {
        completion("MOCK_ACCESS_TOKEN")
    }
}
