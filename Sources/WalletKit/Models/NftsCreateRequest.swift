//
// NftsCreateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NftsCreateRequest: Codable, JSONEncodable, Hashable {

    public var network: Network
    /** collection name */
    public var name: String
    /** Collection symbol used for identification purposes */
    public var symbol: String
    /** URL to the collection logo image */
    public var imageUrl: String
    /** Base URI for computing tokenURI which resolves to token metadata JSON. If set, the resulting URI for each token will be the concatenation of the baseURI and the tokenId (or tokenURI if tokenURI is set when minting the NFT). */
    public var baseUri: String?
    /** On testnet, the developer_secret is always \"testnet-secret\". On mainnet, the developer_secret is set by the developer during account activation. */
    public var developerSecret: String?
    /** A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. */
    public var userPin: String?

    public init(network: Network, name: String, symbol: String, imageUrl: String, baseUri: String? = nil, developerSecret: String? = nil, userPin: String? = nil) {
        self.network = network
        self.name = name
        self.symbol = symbol
        self.imageUrl = imageUrl
        self.baseUri = baseUri
        self.developerSecret = developerSecret
        self.userPin = userPin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case network
        case name
        case symbol
        case imageUrl = "image_url"
        case baseUri = "base_uri"
        case developerSecret = "developer_secret"
        case userPin = "user_pin"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(network, forKey: .network)
        try container.encode(name, forKey: .name)
        try container.encode(symbol, forKey: .symbol)
        try container.encode(imageUrl, forKey: .imageUrl)
        try container.encodeIfPresent(baseUri, forKey: .baseUri)
        try container.encodeIfPresent(developerSecret, forKey: .developerSecret)
        try container.encodeIfPresent(userPin, forKey: .userPin)
    }
}

