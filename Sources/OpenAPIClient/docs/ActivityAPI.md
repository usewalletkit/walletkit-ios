# ActivityAPI

All URIs are relative to *https://testnet.usewalletkit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activityList**](ActivityAPI.md#activitylist) | **GET** /activity | List Wallet Activity


# **activityList**
```swift
    open class func activityList(network: Network, walletAddress: String, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: [ListWalletActivityResponseItem]?, _ error: Error?) -> Void)
```

List Wallet Activity

Retrieves activity history on a specific wallet address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let network = Network() // Network | 
let walletAddress = "walletAddress_example" // String | 
let page = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// List Wallet Activity
ActivityAPI.activityList(network: network, walletAddress: walletAddress, page: page, pageSize: pageSize) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**[ListWalletActivityResponseItem]**](ListWalletActivityResponseItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

