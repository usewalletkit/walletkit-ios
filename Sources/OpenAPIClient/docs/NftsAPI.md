# NftsAPI

All URIs are relative to *https://testnet.usewalletkit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nftsCreate**](NftsAPI.md#nftscreate) | **POST** /nfts/collections | Create NFT Collection
[**nftsGetNftCollection**](NftsAPI.md#nftsgetnftcollection) | **GET** /nfts/collection-by-address | Get NFT Collection
[**nftsListNftCollections**](NftsAPI.md#nftslistnftcollections) | **GET** /nfts/collections | List NFT Collections
[**nftsListNfts**](NftsAPI.md#nftslistnfts) | **GET** /nfts | List NFTs
[**nftsMintNft**](NftsAPI.md#nftsmintnft) | **POST** /nfts/mint | Mint NFT
[**nftsNftImageUpload**](NftsAPI.md#nftsnftimageupload) | **POST** /nfts/upload | Upload NFT image
[**nftsTransferNft**](NftsAPI.md#nftstransfernft) | **POST** /nfts/transfer | Transfer NFT


# **nftsCreate**
```swift
    open class func nftsCreate(nftsCreateRequest: NftsCreateRequest, completion: @escaping (_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)
```

Create NFT Collection

Creates an NFT Collection with provided metadata. An NFT collection refers to a group of non-fungible tokens (NFTs) that are created and released together, often following a specific theme or concept. NFTs are unique digital assets that are stored on a blockchain, represent ownership or proof of authenticity of a particular item, artwork, or digital content. The created nft collection's address can be found by `/transactions/status-by-id` endpoint once the transaction is succeeded. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let nftsCreateRequest = nfts_create_request(network: Network(), name: "name_example", symbol: "symbol_example", imageUrl: "imageUrl_example", baseUri: "baseUri_example", developerSecret: "developerSecret_example", userPin: "userPin_example") // NftsCreateRequest | 

// Create NFT Collection
NftsAPI.nftsCreate(nftsCreateRequest: nftsCreateRequest) { (response, error) in
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
 **nftsCreateRequest** | [**NftsCreateRequest**](NftsCreateRequest.md) |  | 

### Return type

[**TransactionSubmissionResponse**](TransactionSubmissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nftsGetNftCollection**
```swift
    open class func nftsGetNftCollection(network: Network? = nil, collectionAddress: String? = nil, completion: @escaping (_ data: GetNftCollectionResponse?, _ error: Error?) -> Void)
```

Get NFT Collection

Get NFT collection by collection address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let network = Network() // Network |  (optional)
let collectionAddress = "collectionAddress_example" // String | address of the NFT contract (optional)

// Get NFT Collection
NftsAPI.nftsGetNftCollection(network: network, collectionAddress: collectionAddress) { (response, error) in
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
 **collectionAddress** | **String** | address of the NFT contract | [optional] 

### Return type

[**GetNftCollectionResponse**](GetNftCollectionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nftsListNftCollections**
```swift
    open class func nftsListNftCollections(network: Network, walletAddress: String, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: [ListNftCollectionsResponseItem]?, _ error: Error?) -> Void)
```

List NFT Collections

List NFT collections owned by wallet

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let network = Network() // Network | 
let walletAddress = "walletAddress_example" // String | 
let page = 987 // Int | page number starting from 1 (optional)
let pageSize = 987 // Int | size of each page (optional)

// List NFT Collections
NftsAPI.nftsListNftCollections(network: network, walletAddress: walletAddress, page: page, pageSize: pageSize) { (response, error) in
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
 **page** | **Int** | page number starting from 1 | [optional] 
 **pageSize** | **Int** | size of each page | [optional] 

### Return type

[**[ListNftCollectionsResponseItem]**](ListNftCollectionsResponseItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nftsListNfts**
```swift
    open class func nftsListNfts(network: Network, walletAddress: String? = nil, contractAddress: String? = nil, page: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: [ListNftsResponseItem]?, _ error: Error?) -> Void)
```

List NFTs

List NFTs by wallet or by collection address

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let network = Network() // Network | 
let walletAddress = "walletAddress_example" // String | query by wallet address. If provided, contract_address should not be set. (optional)
let contractAddress = "contractAddress_example" // String | query by collection address. If provided, wallet_address should not be set. (optional)
let page = 987 // Int | page number, starting from 1 (optional)
let pageSize = 987 // Int | size of each page (optional)

// List NFTs
NftsAPI.nftsListNfts(network: network, walletAddress: walletAddress, contractAddress: contractAddress, page: page, pageSize: pageSize) { (response, error) in
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
 **walletAddress** | **String** | query by wallet address. If provided, contract_address should not be set. | [optional] 
 **contractAddress** | **String** | query by collection address. If provided, wallet_address should not be set. | [optional] 
 **page** | **Int** | page number, starting from 1 | [optional] 
 **pageSize** | **Int** | size of each page | [optional] 

### Return type

[**[ListNftsResponseItem]**](ListNftsResponseItem.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nftsMintNft**
```swift
    open class func nftsMintNft(nftsMintNftRequest: NftsMintNftRequest, completion: @escaping (_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)
```

Mint NFT

Mints a NFT from a collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let nftsMintNftRequest = nfts_mint_nft_request(network: Network(), contractAddress: "contractAddress_example", recipient: "recipient_example", metadata: MintNftRequestMetadata(name: "name_example", description: "description_example", image: "image_example"), uri: "uri_example", developerSecret: "developerSecret_example", userPin: "userPin_example") // NftsMintNftRequest | 

// Mint NFT
NftsAPI.nftsMintNft(nftsMintNftRequest: nftsMintNftRequest) { (response, error) in
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
 **nftsMintNftRequest** | [**NftsMintNftRequest**](NftsMintNftRequest.md) |  | 

### Return type

[**TransactionSubmissionResponse**](TransactionSubmissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nftsNftImageUpload**
```swift
    open class func nftsNftImageUpload(completion: @escaping (_ data: NftImageUploadResponse?, _ error: Error?) -> Void)
```

Upload NFT image

Upload NFT image to IPFS

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Upload NFT image
NftsAPI.nftsNftImageUpload() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**NftImageUploadResponse**](NftImageUploadResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nftsTransferNft**
```swift
    open class func nftsTransferNft(nftsTransferNftRequest: NftsTransferNftRequest, completion: @escaping (_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)
```

Transfer NFT

Transfers NFT from `from` to `recipient`. The from address must be wallet created in the project.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let nftsTransferNftRequest = nfts_transfer_nft_request(network: Network(), from: "from_example", contractAddress: "contractAddress_example", recipient: "recipient_example", tokenId: "tokenId_example", developerSecret: "developerSecret_example", userPin: "userPin_example") // NftsTransferNftRequest | 

// Transfer NFT
NftsAPI.nftsTransferNft(nftsTransferNftRequest: nftsTransferNftRequest) { (response, error) in
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
 **nftsTransferNftRequest** | [**NftsTransferNftRequest**](NftsTransferNftRequest.md) |  | 

### Return type

[**TransactionSubmissionResponse**](TransactionSubmissionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

