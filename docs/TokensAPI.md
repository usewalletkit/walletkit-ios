# TokensAPI

All URIs are relative to *https://testnet.usewalletkit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokensBatchTransfer**](TokensAPI.md#tokensbatchtransfer) | **POST** /tokens/batch-transfer | Batch Transfer Token
[**tokensCreate**](TokensAPI.md#tokenscreate) | **POST** /tokens | Create Token
[**tokensGet**](TokensAPI.md#tokensget) | **GET** /tokens/tokens | Get Token
[**tokensListBalances**](TokensAPI.md#tokenslistbalances) | **GET** /tokens/balances | List Token Balances
[**tokensMint**](TokensAPI.md#tokensmint) | **POST** /tokens/mint | Mint Token
[**tokensTransfer**](TokensAPI.md#tokenstransfer) | **POST** /tokens/transfer | Transfer Token


# **tokensBatchTransfer**
```swift
    open class func tokensBatchTransfer(tokensBatchTransferRequest: TokensBatchTransferRequest, completion: @escaping (_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)
```

Batch Transfer Token

Batch transfers from the `from` wallet to the list of  `recipients` with the provided amount. The `from` address can only be the ones  created in the project. Transfers within a batch are processed atomically  in a single transaction, resulting in significantly lower average costs  compared to individual transfers 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let tokensBatchTransferRequest = tokens_batch_transfer_request(network: Network(), from: "from_example", token: "token_example", transfers: [BatchTransferTokenRequestTransfersItem(recipient: "recipient_example", amount: "amount_example")], developerSecret: "developerSecret_example", userPin: "userPin_example") // TokensBatchTransferRequest | 

// Batch Transfer Token
TokensAPI.tokensBatchTransfer(tokensBatchTransferRequest: tokensBatchTransferRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokensBatchTransferRequest** | [**TokensBatchTransferRequest**](TokensBatchTransferRequest.md) |  | 

### Return type

[**TransactionSubmissionResponse**](TransactionSubmissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensCreate**
```swift
    open class func tokensCreate(tokensCreateRequest: TokensCreateRequest, completion: @escaping (_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)
```

Create Token

Creates an on-chain token with provided metadata.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let tokensCreateRequest = tokens_create_request(network: Network(), name: "name_example", symbol: "symbol_example", decimals: "decimals_example", displayDecimals: "displayDecimals_example", logoUrl: "logoUrl_example", initialSupply: "initialSupply_example", developerSecret: "developerSecret_example", userPin: "userPin_example") // TokensCreateRequest | 

// Create Token
TokensAPI.tokensCreate(tokensCreateRequest: tokensCreateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokensCreateRequest** | [**TokensCreateRequest**](TokensCreateRequest.md) |  | 

### Return type

[**TransactionSubmissionResponse**](TransactionSubmissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensGet**
```swift
    open class func tokensGet(network: Network, token: String, completion: @escaping (_ data: GetTokenResponse?, _ error: Error?) -> Void)
```

Get Token

Gets the metadata for a token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let network = Network() // Network | 
let token = "token_example" // String | token contract address or symbol in case of the gas token

// Get Token
TokensAPI.tokensGet(network: network, token: token) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | [**Network**](.md) |  | 
 **token** | **String** | token contract address or symbol in case of the gas token | 

### Return type

[**GetTokenResponse**](GetTokenResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensListBalances**
```swift
    open class func tokensListBalances(network: Network, walletAddress: String, completion: @escaping (_ data: [ListTokenBalancesResponseItem]?, _ error: Error?) -> Void)
```

List Token Balances

Retrieves a list of token balances associated with a specific wallet address on a given network.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let network = Network() // Network | 
let walletAddress = "walletAddress_example" // String | 

// List Token Balances
TokensAPI.tokensListBalances(network: network, walletAddress: walletAddress) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network** | [**Network**](.md) |  | 
 **walletAddress** | **String** |  | 

### Return type

[**[ListTokenBalancesResponseItem]**](ListTokenBalancesResponseItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensMint**
```swift
    open class func tokensMint(tokensMintRequest: TokensMintRequest, completion: @escaping (_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)
```

Mint Token

Mints specified amount of token to the recipient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let tokensMintRequest = tokens_mint_request(network: Network(), contractAddress: "contractAddress_example", recipient: "recipient_example", amount: "amount_example", developerSecret: "developerSecret_example", userPin: "userPin_example") // TokensMintRequest | 

// Mint Token
TokensAPI.tokensMint(tokensMintRequest: tokensMintRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokensMintRequest** | [**TokensMintRequest**](TokensMintRequest.md) |  | 

### Return type

[**TransactionSubmissionResponse**](TransactionSubmissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensTransfer**
```swift
    open class func tokensTransfer(tokensTransferRequest: TokensTransferRequest, completion: @escaping (_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)
```

Transfer Token

Transfers the specified amount of tokens from `from` to `recipient`. The from address can only be the ones created in the project.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let tokensTransferRequest = tokens_transfer_request(network: Network(), from: "from_example", token: "token_example", recipient: "recipient_example", amount: "amount_example", developerSecret: "developerSecret_example", userPin: "userPin_example") // TokensTransferRequest | 

// Transfer Token
TokensAPI.tokensTransfer(tokensTransferRequest: tokensTransferRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokensTransferRequest** | [**TokensTransferRequest**](TokensTransferRequest.md) |  | 

### Return type

[**TransactionSubmissionResponse**](TransactionSubmissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

