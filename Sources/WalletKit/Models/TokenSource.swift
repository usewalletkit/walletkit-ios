//
// TokenSource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum TokenSource: String, Codable, CaseIterable {
    case walletkit = "walletkit"
    case firebase = "firebase"
    case supabase = "supabase"
}
