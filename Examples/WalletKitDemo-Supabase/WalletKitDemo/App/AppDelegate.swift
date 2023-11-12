//
//  AppDelegate.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/03.
//

import UIKit
import WalletKit
import Supabase

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Configure WalletKit.
        let projectID = "WALLET_KIT_PROJECT_ID"
        WalletKit.configure(
            projectID: projectID,
            environment: .testnet,
            tokenSource: .supabase,
            tokenProvider: SupabaseTokenProvider(client: .default)
        )

        return true
    }
}

extension SupabaseClient {

    static var `default`: SupabaseClient {
        let supabaseURL: URL = URL(string: "SUPABASE_URL")!
        let supabaseKey: String = "SUPABASE_API_KEY"

        return SupabaseClient(
            supabaseURL: supabaseURL,
            supabaseKey: supabaseKey
        )
    }
}