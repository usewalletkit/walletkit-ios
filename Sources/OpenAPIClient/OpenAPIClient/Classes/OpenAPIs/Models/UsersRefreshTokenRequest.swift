//
// UsersRefreshTokenRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UsersRefreshTokenRequest: Codable, JSONEncodable, Hashable {

    public var sessionId: String
    public var refreshToken: String

    public init(sessionId: String, refreshToken: String) {
        self.sessionId = sessionId
        self.refreshToken = refreshToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sessionId = "session_id"
        case refreshToken = "refresh_token"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sessionId, forKey: .sessionId)
        try container.encode(refreshToken, forKey: .refreshToken)
    }
}
