//
//  SessionManager.swift
//  
//
//  Created by Pol Chen on 2023/10/30.
//

import Foundation

protocol SessionManaging {

    func storeSession(_ session: Session)

    func retrieveSession() -> Session?
}

final class SessionManager: SessionManaging {

    private let sessionKey: String
    private let keychainManager: KeychainManaging

    init(
        sessionKey: String = Constants.sessionKey,
        keychainManager: KeychainManaging? = nil
    ) {
        self.sessionKey = sessionKey
        if let keychainManager {
            self.keychainManager = keychainManager
        } else {
            self.keychainManager = KeychainManager(serviceName: Constants.serviceName)
        }
    }

    func storeSession(_ session: Session) {
        let sessionData = try! JSONEncoder().encode(session)
        keychainManager.storeData(sessionData, for: sessionKey)
    }

    func retrieveSession() -> Session? {
        guard let sessionData = keychainManager.retrieveData(for: sessionKey) else {
            return nil
        }
        let session = try? JSONDecoder().decode(Session.self, from: sessionData)
        return session
    }
}

extension SessionManager {

    private struct Constants {
        static let serviceName: String = "com.usewalletkit.credentials"
        static let sessionKey: String = "com.usewalletkit.credentials.session"
    }
}
