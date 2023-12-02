//
// UsersLoginWithPasskeyRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UsersLoginWithPasskeyRequest: Codable, JSONEncodable, Hashable {

    public var email: String?
    public var signInWallet: String?

    public init(email: String? = nil, signInWallet: String? = nil) {
        self.email = email
        self.signInWallet = signInWallet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case signInWallet = "sign_in_wallet"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(signInWallet, forKey: .signInWallet)
    }
}
