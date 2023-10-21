# GasAPI

All URIs are relative to *https://testnet.usewalletkit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gasBuy**](GasAPI.md#gasbuy) | **POST** /gas/buy | Buy Gas


# **gasBuy**
```swift
    open class func gasBuy(gasBuyRequest: GasBuyRequest, completion: @escaping (_ data: BuyGasResponse?, _ error: Error?) -> Void)
```

Buy Gas

Tops up gas to the destination wallet address (default to project wallet if not provided explicitly).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let gasBuyRequest = gas_buy_request(network: Network(), amount: "amount_example", destinationAddress: "destinationAddress_example") // GasBuyRequest | 

// Buy Gas
GasAPI.gasBuy(gasBuyRequest: gasBuyRequest) { (response, error) in
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
 **gasBuyRequest** | [**GasBuyRequest**](GasBuyRequest.md) |  | 

### Return type

[**BuyGasResponse**](BuyGasResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

