//
// TransactionsPreviewBundleRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionsPreviewBundleRequest: Codable, JSONEncodable, Hashable {

    public var network: Network
    /** sender of the transaction. */
    public var from: String
    /** a bundle of transactions to preview. */
    public var unsignedTransactions: [UnsignedTransaction]

    public init(network: Network, from: String, unsignedTransactions: [UnsignedTransaction]) {
        self.network = network
        self.from = from
        self.unsignedTransactions = unsignedTransactions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case network
        case from
        case unsignedTransactions = "unsigned_transactions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(network, forKey: .network)
        try container.encode(from, forKey: .from)
        try container.encode(unsignedTransactions, forKey: .unsignedTransactions)
    }
}

