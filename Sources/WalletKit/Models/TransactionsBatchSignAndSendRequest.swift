//
// TransactionsBatchSignAndSendRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionsBatchSignAndSendRequest: Codable, JSONEncodable, Hashable {

    public var network: Network
    /** address can only be the ones created in the project. */
    public var signerWalletAddress: String
    /** list of transaction input to be signed. */
    public var unsignedTransactions: [SignAndSendRequestUnsignedTransaction]
    /** On testnet, the developer_secret is always \"testnet-secret\". On mainnet, the developer_secret is set by the developer during account activation. */
    public var developerSecret: String?
    /** A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. */
    public var userPin: String?

    public init(network: Network, signerWalletAddress: String, unsignedTransactions: [SignAndSendRequestUnsignedTransaction], developerSecret: String? = nil, userPin: String? = nil) {
        self.network = network
        self.signerWalletAddress = signerWalletAddress
        self.unsignedTransactions = unsignedTransactions
        self.developerSecret = developerSecret
        self.userPin = userPin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case network
        case signerWalletAddress = "signer_wallet_address"
        case unsignedTransactions = "unsigned_transactions"
        case developerSecret = "developer_secret"
        case userPin = "user_pin"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(network, forKey: .network)
        try container.encode(signerWalletAddress, forKey: .signerWalletAddress)
        try container.encode(unsignedTransactions, forKey: .unsignedTransactions)
        try container.encodeIfPresent(developerSecret, forKey: .developerSecret)
        try container.encodeIfPresent(userPin, forKey: .userPin)
    }
}

