//
// ContractsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ContractsAPI {

    /**
     Get Contract Metadata
     
     - parameter network: (query)  
     - parameter contractAddress: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func contractsGetMetadata(network: Network, contractAddress: String, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<ContractMetadata, ErrorResponse>) -> Void)) -> RequestTask {
        return contractsGetMetadataWithRequestBuilder(network: network, contractAddress: contractAddress).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Contract Metadata
     - GET /contracts/metadata
     - Get contract metadata by contract address.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter network: (query)  
     - parameter contractAddress: (query)  
     - returns: RequestBuilder<ContractMetadata> 
     */
    open class func contractsGetMetadataWithRequestBuilder(network: Network, contractAddress: String) -> RequestBuilder<ContractMetadata> {
        let localVariablePath = "/contracts/metadata"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "network": (wrappedValue: network.encodeToJSON(), isExplode: true),
            "contract_address": (wrappedValue: contractAddress.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ContractMetadata>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
