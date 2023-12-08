# ContractsAPI

All URIs are relative to *https://testnet.usewalletkit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contractsGetMetadata**](ContractsAPI.md#contractsgetmetadata) | **GET** /contracts/metadata | Get Contract Metadata


# **contractsGetMetadata**
```swift
    open class func contractsGetMetadata(network: Network, contractAddress: String, completion: @escaping (_ data: ContractMetadata?, _ error: Error?) -> Void)
```

Get Contract Metadata

Get contract metadata by contract address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let network = Network() // Network | 
let contractAddress = "contractAddress_example" // String | 

// Get Contract Metadata
ContractsAPI.contractsGetMetadata(network: network, contractAddress: contractAddress) { (response, error) in
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
 **contractAddress** | **String** |  | 

### Return type

[**ContractMetadata**](ContractMetadata.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

