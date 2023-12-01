//
//  SupabaseTokenProvider.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/10/31.
//

import Foundation
import WalletKit
import Supabase

final class SupabaseTokenProvider: TokenProviding {

    private let client: SupabaseClient

    init(client: SupabaseClient) {
        self.client = client
    }

    let tokenSource: TokenSource = .supabase

    func getAccessToken(completion: @escaping ((String?) -> Void)) {
        Task {
            do {
                let session = try await client.auth.session
                completion(session.accessToken)
            } catch {
                completion(nil)
            }
        }
    }
}
