# TransactionsSignAndSendRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network** | [**Network**](Network.md) |  | 
**signerWalletAddress** | **String** | address can only be the ones created in the project. | 
**unsignedTransaction** | [**SignAndSendRequestUnsignedTransaction**](SignAndSendRequestUnsignedTransaction.md) |  | 
**developerSecret** | **String** | On testnet, the developer_secret is always \&quot;testnet-secret\&quot;. On mainnet, the developer_secret is set by the developer during account activation. | [optional] 
**userPin** | **String** | A 6-digit numeric pin that is only known to the user, set during wallet creation. This pin is required to sign transactions from this wallet. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


