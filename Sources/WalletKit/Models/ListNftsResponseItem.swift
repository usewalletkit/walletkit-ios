//
// ListNftsResponseItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListNftsResponseItem: Codable, JSONEncodable, Hashable {

    public var metadata: ListNftsResponseItemMetadata?
    public var ownerWalletAddress: String
    public var contractAddress: String
    public var tokenId: String

    public init(metadata: ListNftsResponseItemMetadata? = nil, ownerWalletAddress: String, contractAddress: String, tokenId: String) {
        self.metadata = metadata
        self.ownerWalletAddress = ownerWalletAddress
        self.contractAddress = contractAddress
        self.tokenId = tokenId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case metadata
        case ownerWalletAddress = "owner_wallet_address"
        case contractAddress = "contract_address"
        case tokenId = "token_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encode(ownerWalletAddress, forKey: .ownerWalletAddress)
        try container.encode(contractAddress, forKey: .contractAddress)
        try container.encode(tokenId, forKey: .tokenId)
    }
}

