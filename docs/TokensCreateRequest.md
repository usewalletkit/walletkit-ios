# TokensCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network** | [**Network**](Network.md) |  | 
**name** | **String** |  | 
**symbol** | **String** |  | 
**decimals** | **String** | Specify how many decimals places a token has. E.g. To be able to transfer 1.5 XYZ token, decimals must be at least 1 since that number has a single decimal places. | 
**displayDecimals** | **String** | Decimals to display on WalletKit dashboard. | [optional] 
**logoUrl** | **String** | url of the token logo. | [optional] 
**initialSupply** | **String** | The amount of tokens to be minted to the token creator. | 
**developerSecret** | **String** | On testnet, the developer_secret is always \&quot;testnet-secret\&quot;. On mainnet, the developer_secret is set by the developer during account activation. | [optional] 
**userPin** | **String** | A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


