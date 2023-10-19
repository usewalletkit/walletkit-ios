//
// GetTransactionStatusByIdResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetTransactionStatusByIdResponse: Codable, JSONEncodable, Hashable {

    public var transactionId: String
    /** If the transaction has been sent to the blockchain (status = pending/success/failed), this field will be populated with the transaction hash. */
    public var transactionHash: String?
    public var network: Network
    public var status: String
    /** If the transaction is a contract creation, this field will be populated with the contract address. */
    public var contractAddress: String?

    public init(transactionId: String, transactionHash: String? = nil, network: Network, status: String, contractAddress: String? = nil) {
        self.transactionId = transactionId
        self.transactionHash = transactionHash
        self.network = network
        self.status = status
        self.contractAddress = contractAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transactionId = "transaction_id"
        case transactionHash = "transaction_hash"
        case network
        case status
        case contractAddress = "contract_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transactionId, forKey: .transactionId)
        try container.encodeIfPresent(transactionHash, forKey: .transactionHash)
        try container.encode(network, forKey: .network)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(contractAddress, forKey: .contractAddress)
    }
}
