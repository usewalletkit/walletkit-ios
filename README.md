# WalletKit iOS SDK

The best API to create gasless wallets for your users. Build mobile-first web3 apps with unmatched user experience.

## Overview

[WalletKit](https://usewalletkit.com) provides SDKs and APIs to build mobile-first web3 apps. At its core, WalletKit provides APIs to create and manage embedded, gasless, and recoverable wallets. These APIs are augmented with no-code tools and APIs to build with tokens and NFTs. Together, WalletKit can be used to build full-fledged web3 apps. Everything has been designed to get you up and running quickly. If you are new to blockchain, you don’t have to learn any complex concepts. If you are a seasoned developer, you can focus on your product and ship faster.

At a high-level, we provide APIs and tools to build with wallets, tokens, and NFTs:

- Wallets: Create secure wallets on any network with a simple API call
- Tokens: Create custom tokens or build with existing tokens like USDC
- NFTs: Mint your own NFTs and build novel product experiences

By combining these building blocks, you can create a wide range of web3 experiences.

## Requirements

- iOS 14.0+

## Installation

### [Swift Package Manager](https://github.com/apple/swift-package-manager)

1. In Xcode, select “File” → “Swift Packages” → “Add Package Dependency”
2. Enter https://github.com/usewalletkit/walletkit-ios.git

### [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)

1. Add `pod 'WalletKit'` to your Podfile
2. Run `pod install` to install the pod

## Usage

### Configuration

In `AppDelegate.swift`:

```swift
import UIKit
import WalletKit

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Configure WalletKit.
        let projectID = "WALLET_KIT_PROJECT_ID"
        WalletKit.configure(
            projectID: projectID,
            environment: .testnet,
            tokenSource: .walletkit
        )

        return true
    }
}
```

For SwiftUI projects, register app delegate in your `App`:

```swift
import SwiftUI

@main
struct WalletKitDemoApp: App {

    // Register app delegate for WalletKit setup.
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
```

### APIs

After importing the SDK, use `WalletKit.activity/gas/nfts/tokens/transactions/users/wallets.someMethod` to access WalletKit APIs.

```swift
import WalletKit

// Access WalletKit APIs.

WalletKit.users.usersLoginAnonymously { result in
    switch result {
    case .success(let session):
        // Handle session.
    case .failure(let error):
        // Handle error.
    }
}

WalletKit.wallets.walletsList { result in
    switch result {
    case .success(let list):
        // Handle list.
    case .failure(let error):
        // Handle error.
    }
}
```

### Demos

See [Examples](Examples/) for WalletKit integration demos. In these demos, you can explore how to sign in / out a user with WalletKit/Firebase/Supabase as auth provider and create / display wallets.

## Documentation

See [Documentation](Documentation/) for detailed documentation of each API and model.

Visit [docs.usewalletkit.com](https://docs.usewalletkit.com) for more information.

## Contributing

See [Contributing](CONTRIBUTING.md) for more information on contributing to the WalletKit iOS SDK.

## License

The contents of this repository are licensed under the [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0). Please see [LICENSE](LICENSE) for more information.
