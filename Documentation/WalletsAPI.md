# WalletsAPI

All URIs are relative to *https://testnet.usewalletkit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**walletsChangeUserPin**](WalletsAPI.md#walletschangeuserpin) | **POST** /wallets/change-user-pin | Change User Pin
[**walletsCreate**](WalletsAPI.md#walletscreate) | **POST** /wallets | Create Wallet
[**walletsExport**](WalletsAPI.md#walletsexport) | **POST** /wallets/export | Export Wallet
[**walletsGetByAddress**](WalletsAPI.md#walletsgetbyaddress) | **GET** /wallets/get-by-address | Get Wallet by Address
[**walletsGetById**](WalletsAPI.md#walletsgetbyid) | **GET** /wallets/get-by-id | Get Wallet by ID
[**walletsGetByNetwork**](WalletsAPI.md#walletsgetbynetwork) | **GET** /wallets/get-by-network | Get User Wallet by Network
[**walletsGetByOwnerId**](WalletsAPI.md#walletsgetbyownerid) | **GET** /wallets/get-by-owner-id | Get Wallet by Owner ID
[**walletsList**](WalletsAPI.md#walletslist) | **GET** /wallets | List Wallets


# **walletsChangeUserPin**
```swift
    open class func walletsChangeUserPin(changeUserPinRequest: ChangeUserPinRequest, completion: @escaping (_ data: ChangeUserPinResponse?, _ error: Error?) -> Void)
```

Change User Pin

Change pin for user controlled wallets

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let changeUserPinRequest = ChangeUserPinRequest(network: Network(), address: "address_example", oldUserPin: "oldUserPin_example", newUserPin: "newUserPin_example") // ChangeUserPinRequest | 

// Change User Pin
WalletsAPI.walletsChangeUserPin(changeUserPinRequest: changeUserPinRequest) { (response, error) in
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
 **changeUserPinRequest** | [**ChangeUserPinRequest**](ChangeUserPinRequest.md) |  | 

### Return type

[**ChangeUserPinResponse**](ChangeUserPinResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletsCreate**
```swift
    open class func walletsCreate(createWalletRequest: CreateWalletRequest, completion: @escaping (_ data: CreateWalletResponse?, _ error: Error?) -> Void)
```

Create Wallet

Creates a wallet with provided metadata.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let createWalletRequest = CreateWalletRequest(network: Network(), name: "name_example", ownerId: "ownerId_example", controlMode: WalletControlMode(), developerSecret: "developerSecret_example", userPin: "userPin_example") // CreateWalletRequest | 

// Create Wallet
WalletsAPI.walletsCreate(createWalletRequest: createWalletRequest) { (response, error) in
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
 **createWalletRequest** | [**CreateWalletRequest**](CreateWalletRequest.md) |  | 

### Return type

[**CreateWalletResponse**](CreateWalletResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletsExport**
```swift
    open class func walletsExport(exportWalletRequest: ExportWalletRequest, completion: @escaping (_ data: ExportWalletResponse?, _ error: Error?) -> Void)
```

Export Wallet

Export wallet mnemonic phrase

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let exportWalletRequest = ExportWalletRequest(network: Network(), address: "address_example", userPin: "userPin_example") // ExportWalletRequest | 

// Export Wallet
WalletsAPI.walletsExport(exportWalletRequest: exportWalletRequest) { (response, error) in
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
 **exportWalletRequest** | [**ExportWalletRequest**](ExportWalletRequest.md) |  | 

### Return type

[**ExportWalletResponse**](ExportWalletResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletsGetByAddress**
```swift
    open class func walletsGetByAddress(network: Network, address: String, completion: @escaping (_ data: Wallet?, _ error: Error?) -> Void)
```

Get Wallet by Address

Get a wallet by network and address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let network = Network() // Network | 
let address = "address_example" // String | 

// Get Wallet by Address
WalletsAPI.walletsGetByAddress(network: network, address: address) { (response, error) in
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
 **address** | **String** |  | 

### Return type

[**Wallet**](Wallet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletsGetById**
```swift
    open class func walletsGetById(network: Network, id: String, completion: @escaping (_ data: Wallet?, _ error: Error?) -> Void)
```

Get Wallet by ID

Get a wallet by id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let network = Network() // Network | 
let id = "id_example" // String | 

// Get Wallet by ID
WalletsAPI.walletsGetById(network: network, id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**Wallet**](Wallet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletsGetByNetwork**
```swift
    open class func walletsGetByNetwork(network: Network, completion: @escaping (_ data: Wallet?, _ error: Error?) -> Void)
```

Get User Wallet by Network

Get a wallet for a user by network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let network = Network() // Network | 

// Get User Wallet by Network
WalletsAPI.walletsGetByNetwork(network: network) { (response, error) in
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

### Return type

[**Wallet**](Wallet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletsGetByOwnerId**
```swift
    open class func walletsGetByOwnerId(network: Network, ownerID: String, completion: @escaping (_ data: Wallet?, _ error: Error?) -> Void)
```

Get Wallet by Owner ID

Get a wallet by network and owner id

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let network = Network() // Network | 
let ownerID = "ownerID_example" // String | 

// Get Wallet by Owner ID
WalletsAPI.walletsGetByOwnerId(network: network, ownerID: ownerID) { (response, error) in
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
 **ownerID** | **String** |  | 

### Return type

[**Wallet**](Wallet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletsList**
```swift
    open class func walletsList(network: Network? = nil, page: Int? = nil, pageSize: String? = nil, completion: @escaping (_ data: [ListWalletsResponseItem]?, _ error: Error?) -> Void)
```

List Wallets

Lists wallets created in the project. Supports filter by network.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let network = Network() // Network |  (optional)
let page = 987 // Int |  (optional)
let pageSize = "pageSize_example" // String |  (optional)

// List Wallets
WalletsAPI.walletsList(network: network, page: page, pageSize: pageSize) { (response, error) in
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
 **network** | [**Network**](.md) |  | [optional] 
 **page** | **Int** |  | [optional] 
 **pageSize** | **String** |  | [optional] 

### Return type

[**[ListWalletsResponseItem]**](ListWalletsResponseItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

