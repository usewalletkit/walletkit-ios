//
// ListWalletActivityResponseItemMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListWalletActivityResponseItemMetadata: Codable, JSONEncodable, Hashable {

    public var amount: String

    public init(amount: String) {
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(amount, forKey: .amount)
    }
}
