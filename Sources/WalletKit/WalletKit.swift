//
//  WalletKit.swift
//
//
//  Created by Pol Chen on 2023/10/31.
//

public class WalletKit {

    /// Configures WalletKit client.
    ///
    /// - parameter projectID: Project ID of WalletKit.
    /// - parameter environment: Mainnet / testnet environment, defaults to `.testnet`.
    /// - parameter tokenProvider: The provider of auth token, defaults to `nil` which will use the default interal WalletKit token provider with `.walletkit` token source. If developers specify other `tokenSource`, they should provide a corresponding token provider conforming to `TokenProviding` protocol.
    public static func configure(
        projectID: String,
        environment: WalletKitEnvironment = .testnet,
        tokenProvider: TokenProviding? = nil
    ) {
        WalletKitAPI.customHeaders["X-WalletKit-Project-ID"] = projectID

        WalletKitAPI.basePath = environment.basePath
        WalletKitAPI.requestBuilderFactory = WalletKitURLSessionRequestBuilderFactory()

        WalletKitAPI.tokenProvider = tokenProvider ?? WalletKitTokenProvider()
    }

    /// Provides access to WalletKit activity APIs.
    public static var activity: ActivityAPI.Type = ActivityAPI.self

    /// Provides access to WalletKit gas APIs.
    public static var gas: GasAPI.Type = GasAPI.self

    /// Provides access to WalletKit NFT APIs.
    public static var nfts: NftsAPI.Type = NftsAPI.self

    /// Provides access to WalletKit token APIs.
    public static var tokens: TokensAPI.Type = TokensAPI.self

    /// Provides access to WalletKit transaction APIs.
    public static var transactions: TransactionsAPI.Type = TransactionsAPI.self

    /// Provides access to WalletKit user APIs.
    ///
    /// Only available when `tokenSource` is configured as the default `.walletkit`.
    /// For other `tokenSource`, developers should utilize user related APIs from the corresponding auth provider.
    public static var users: DecoratedUsersAPI.Type = DecoratedUsersAPI.self

    /// Provides access to WalletKit wallet APIs.
    public static var wallets: WalletsAPI.Type = WalletsAPI.self
}
