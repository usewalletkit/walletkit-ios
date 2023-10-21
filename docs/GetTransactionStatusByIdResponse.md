# GetTransactionStatusByIdResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transactionId** | **String** |  | 
**transactionHash** | **String** | If the transaction has been sent to the blockchain (status &#x3D; pending/success/failed), this field will be populated with the transaction hash. | [optional] 
**network** | [**Network**](Network.md) |  | 
**status** | **String** |  | 
**contractAddress** | **String** | If the transaction is a contract creation, this field will be populated with the contract address. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


