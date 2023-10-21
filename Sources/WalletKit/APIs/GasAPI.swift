//
// GasAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GasAPI {

    /**
     Buy Gas
     
     - parameter gasBuyRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func gasBuy(gasBuyRequest: GasBuyRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<BuyGasResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return gasBuyWithRequestBuilder(gasBuyRequest: gasBuyRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Buy Gas
     - POST /gas/buy
     - Tops up gas to the destination wallet address (default to project wallet if not provided explicitly).
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter gasBuyRequest: (body)  
     - returns: RequestBuilder<BuyGasResponse> 
     */
    open class func gasBuyWithRequestBuilder(gasBuyRequest: GasBuyRequest) -> RequestBuilder<BuyGasResponse> {
        let localVariablePath = "/gas/buy"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gasBuyRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BuyGasResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
