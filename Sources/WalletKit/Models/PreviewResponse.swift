//
// PreviewResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PreviewResponse: Codable, JSONEncodable, Hashable {

    public var network: Network
    public var from: String
    public var to: String
    public var contract: ContractMetadata?
    public var functionName: String?
    public var arguments: [String: String]
    public var assetChanges: [AssetChange]

    public init(network: Network, from: String, to: String, contract: ContractMetadata? = nil, functionName: String? = nil, arguments: [String: String], assetChanges: [AssetChange]) {
        self.network = network
        self.from = from
        self.to = to
        self.contract = contract
        self.functionName = functionName
        self.arguments = arguments
        self.assetChanges = assetChanges
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case network
        case from
        case to
        case contract
        case functionName = "function_name"
        case arguments
        case assetChanges = "asset_changes"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(network, forKey: .network)
        try container.encode(from, forKey: .from)
        try container.encode(to, forKey: .to)
        try container.encodeIfPresent(contract, forKey: .contract)
        try container.encodeIfPresent(functionName, forKey: .functionName)
        try container.encode(arguments, forKey: .arguments)
        try container.encode(assetChanges, forKey: .assetChanges)
    }
}

