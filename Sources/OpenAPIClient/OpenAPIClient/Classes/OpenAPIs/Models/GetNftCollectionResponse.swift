//
// GetNftCollectionResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetNftCollectionResponse: Codable, JSONEncodable, Hashable {

    public var network: Network
    public var contractAddress: String
    public var name: String
    public var symbol: String

    public init(network: Network, contractAddress: String, name: String, symbol: String) {
        self.network = network
        self.contractAddress = contractAddress
        self.name = name
        self.symbol = symbol
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case network
        case contractAddress = "contract_address"
        case name
        case symbol
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(network, forKey: .network)
        try container.encode(contractAddress, forKey: .contractAddress)
        try container.encode(name, forKey: .name)
        try container.encode(symbol, forKey: .symbol)
    }
}
