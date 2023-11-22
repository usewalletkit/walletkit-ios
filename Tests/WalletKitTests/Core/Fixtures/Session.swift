//
//  Session.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import Foundation
import WalletKit

extension Session {

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
