//
//  MockKeychainManager.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import Foundation
@testable import WalletKit

final class MockKeychainManager: KeychainManaging {

    private var store: [String: Data] = .init()

    func storeData(_ data: Data, for key: String) {
        store[key] = data
    }

    func retrieveData(for key: String) -> Data? {
        return store[key]
    }

    func removeData(for key: String) {
        store.removeValue(forKey: key)
    }
}
