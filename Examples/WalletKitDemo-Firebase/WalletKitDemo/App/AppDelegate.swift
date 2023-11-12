//
//  AppDelegate.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/03.
//

import UIKit
import WalletKit
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Configure Firebase.
        FirebaseApp.configure()

        // Configure WalletKit.
        let projectID = "WALLET_KIT_PROJECT_ID"
        WalletKit.configure(
            projectID: projectID,
            environment: .testnet,
            tokenSource: .firebase,
            tokenProvider: FirebaseTokenProvider()
        )

        return true
    }
}
