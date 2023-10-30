//
//  KeychainManager.swift
//  
//
//  Created by Pol Chen on 2023/10/30.
//

import Foundation
import KeychainAccess

protocol KeychainManaging {

    func storeData(_ data: Data, for key: String)

    func retrieveData(for key: String) -> Data?
}

final class KeychainManager: KeychainManaging {

    private let serviceName: String

    init(serviceName: String) {
        self.serviceName = serviceName
    }

    private var keychain: Keychain {
        return Keychain(service: serviceName)
            .accessibility(.afterFirstUnlockThisDeviceOnly)
    }

    func storeData(_ data: Data, for key: String) {
        keychain[data: key] = data
    }

    func retrieveData(for key: String) -> Data? {
        return keychain[data: key]
    }
}
