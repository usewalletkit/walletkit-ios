//
// TokensMintRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TokensMintRequest: Codable, JSONEncodable, Hashable {

    public var network: Network
    public var contractAddress: String
    public var recipient: String
    public var amount: String
    /** On testnet, the developer_secret is always \"testnet-secret\". On mainnet, the developer_secret is set by the developer during account activation. */
    public var developerSecret: String?
    /** A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. */
    public var userPin: String?

    public init(network: Network, contractAddress: String, recipient: String, amount: String, developerSecret: String? = nil, userPin: String? = nil) {
        self.network = network
        self.contractAddress = contractAddress
        self.recipient = recipient
        self.amount = amount
        self.developerSecret = developerSecret
        self.userPin = userPin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case network
        case contractAddress = "contract_address"
        case recipient
        case amount
        case developerSecret = "developer_secret"
        case userPin = "user_pin"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(network, forKey: .network)
        try container.encode(contractAddress, forKey: .contractAddress)
        try container.encode(recipient, forKey: .recipient)
        try container.encode(amount, forKey: .amount)
        try container.encodeIfPresent(developerSecret, forKey: .developerSecret)
        try container.encodeIfPresent(userPin, forKey: .userPin)
    }
}

