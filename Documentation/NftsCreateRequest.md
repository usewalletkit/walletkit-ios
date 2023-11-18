# NftsCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network** | [**Network**](Network.md) |  | 
**name** | **String** | collection name | 
**symbol** | **String** | Collection symbol used for identification purposes | 
**imageUrl** | **String** | URL to the collection logo image | 
**baseUri** | **String** | Base URI for computing tokenURI which resolves to token metadata JSON. If set, the resulting URI for each token will be the concatenation of the baseURI and the tokenId (or tokenURI if tokenURI is set when minting the NFT). | [optional] 
**developerSecret** | **String** | On testnet, the developer_secret is always \&quot;testnet-secret\&quot;. On mainnet, the developer_secret is set by the developer during account activation. | [optional] 
**userPin** | **String** | A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


