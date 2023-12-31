//
// ChangeUserPinRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChangeUserPinRequest: Codable, JSONEncodable, Hashable {

    public var network: Network
    public var address: String
    /** A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. */
    public var oldUserPin: String?
    /** A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. */
    public var newUserPin: String?

    public init(network: Network, address: String, oldUserPin: String?, newUserPin: String?) {
        self.network = network
        self.address = address
        self.oldUserPin = oldUserPin
        self.newUserPin = newUserPin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case network
        case address
        case oldUserPin = "old_user_pin"
        case newUserPin = "new_user_pin"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(network, forKey: .network)
        try container.encode(address, forKey: .address)
        try container.encode(oldUserPin, forKey: .oldUserPin)
        try container.encode(newUserPin, forKey: .newUserPin)
    }
}

