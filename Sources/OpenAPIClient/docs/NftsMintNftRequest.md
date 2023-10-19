# NftsMintNftRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network** | [**Network**](Network.md) |  | 
**contractAddress** | **String** | address of the NFT collection smart contract to mint from. | 
**recipient** | **String** | wallet address where the NFT should be delivered. defaults to the sender&#39;s address. | [optional] 
**metadata** | [**MintNftRequestMetadata**](MintNftRequestMetadata.md) |  | [optional] 
**uri** | **String** | uri the the nft metadata.json, schema define in https://eips.ethereum.org/EIPS/eip-721#specification. Use the metadata field instead if the metadata.json doesn&#39;t exist and needs to be created and hosted. | [optional] 
**developerSecret** | **String** | On testnet, the developer_secret is always \&quot;testnet-secret\&quot;. On mainnet, the developer_secret is set by the developer during account activation. | [optional] 
**userPin** | **String** | A 6-digit numeric pin that is only known to the user, set during  wallet creation. This pin is required to sign transactions from  this wallet. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


