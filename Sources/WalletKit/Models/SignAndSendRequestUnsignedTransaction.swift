//
// SignAndSendRequestUnsignedTransaction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** input of a transaction to be signed. */
public struct SignAndSendRequestUnsignedTransaction: Codable, JSONEncodable, Hashable {

    /** smart contract address or external owned account address to interact with */
    public var to: String
    /** optional. amount of native token to be transferred to the to address in this transaction. */
    public var value: String?
    /** If it's a smart contract interaction, the calldata of the smart contract function. (ABI-encoded function with arguments) */
    public var input: String?

    public init(to: String, value: String? = nil, input: String? = nil) {
        self.to = to
        self.value = value
        self.input = input
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case to
        case value
        case input
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(to, forKey: .to)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(input, forKey: .input)
    }
}

