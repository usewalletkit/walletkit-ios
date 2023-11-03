//
//  WalletKitDemoApp.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/02.
//

import SwiftUI

@main
struct WalletKitDemoApp: App {

    // Register app delegate for WalletKit setup.
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
