# TransactionsAPI

All URIs are relative to *https://testnet.usewalletkit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transactionsGetStatus**](TransactionsAPI.md#transactionsgetstatus) | **GET** /transactions/status-by-hash | Transaction Status By Hash
[**transactionsSignAndSend**](TransactionsAPI.md#transactionssignandsend) | **POST** /transactions/sign-and-send | Sign and Send
[**transactionsStatusById**](TransactionsAPI.md#transactionsstatusbyid) | **GET** /transactions/status-by-id | Transaction Status by ID


# **transactionsGetStatus**
```swift
    open class func transactionsGetStatus(network: Network, transactionHash: String, completion: @escaping (_ data: GetTransactionStatusByHashResponse?, _ error: Error?) -> Void)
```

Transaction Status By Hash

Retrieves the status of a transaction by its hash.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let network = Network() // Network | 
let transactionHash = "transactionHash_example" // String | 

// Transaction Status By Hash
TransactionsAPI.transactionsGetStatus(network: network, transactionHash: transactionHash) { (response, error) in
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
 **transactionHash** | **String** |  | 

### Return type

[**GetTransactionStatusByHashResponse**](GetTransactionStatusByHashResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionsSignAndSend**
```swift
    open class func transactionsSignAndSend(transactionsSignAndSendRequest: TransactionsSignAndSendRequest, completion: @escaping (_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)
```

Sign and Send

This endpoint allows arbitrary smart contract function calls. It can be used to interact with smart contracts that are not supported by the Token/NFT APIs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let transactionsSignAndSendRequest = transactions_sign_and_send_request(network: Network(), signerWalletAddress: "signerWalletAddress_example", unsignedTransaction: SignAndSendRequestUnsignedTransaction(to: "to_example", value: "value_example", input: "input_example"), developerSecret: "developerSecret_example", userPin: "userPin_example") // TransactionsSignAndSendRequest | 

// Sign and Send
TransactionsAPI.transactionsSignAndSend(transactionsSignAndSendRequest: transactionsSignAndSendRequest) { (response, error) in
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
 **transactionsSignAndSendRequest** | [**TransactionsSignAndSendRequest**](TransactionsSignAndSendRequest.md) |  | 

### Return type

[**TransactionSubmissionResponse**](TransactionSubmissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionsStatusById**
```swift
    open class func transactionsStatusById(id: String? = nil, completion: @escaping (_ data: GetTransactionStatusByIdResponse?, _ error: Error?) -> Void)
```

Transaction Status by ID

Retrieves the status of a transaction by its id returned from the APIs that change the state of blockchain` (e.g. /tokens/transfer)`

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | transaction id returned in POST requests that result in a transaction. e.g. Transfer Token (optional)

// Transaction Status by ID
TransactionsAPI.transactionsStatusById(id: id) { (response, error) in
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
 **id** | **String** | transaction id returned in POST requests that result in a transaction. e.g. Transfer Token | [optional] 

### Return type

[**GetTransactionStatusByIdResponse**](GetTransactionStatusByIdResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

