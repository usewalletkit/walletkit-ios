# TokensTransferRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network** | [**Network**](Network.md) |  | 
**from** | **String** | from address of the transfer | 
**token** | **String** | token contract address or symbol in case of the gas token to be transferred. | 
**recipient** | **String** | recipient of the transfer | 
**amount** | **String** | amount to be transferred. | 
**developerSecret** | **String** | On testnet, the developer_secret is always \&quot;testnet-secret\&quot;. On mainnet, the developer_secret is set by the developer during account activation. | [optional] 
**userPin** | **String** | A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


