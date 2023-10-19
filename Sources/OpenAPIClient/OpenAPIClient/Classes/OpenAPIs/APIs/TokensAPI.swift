//
// TokensAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TokensAPI {

    /**
     Batch Transfer Token
     
     - parameter tokensBatchTransferRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func tokensBatchTransfer(tokensBatchTransferRequest: TokensBatchTransferRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return tokensBatchTransferWithRequestBuilder(tokensBatchTransferRequest: tokensBatchTransferRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Batch Transfer Token
     - POST /tokens/batch-transfer
     - Batch transfers from the `from` wallet to the list of  `recipients` with the provided amount. The `from` address can only be the ones  created in the project. Transfers within a batch are processed atomically  in a single transaction, resulting in significantly lower average costs  compared to individual transfers 
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter tokensBatchTransferRequest: (body)  
     - returns: RequestBuilder<TransactionSubmissionResponse> 
     */
    open class func tokensBatchTransferWithRequestBuilder(tokensBatchTransferRequest: TokensBatchTransferRequest) -> RequestBuilder<TransactionSubmissionResponse> {
        let localVariablePath = "/tokens/batch-transfer"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tokensBatchTransferRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionSubmissionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create Token
     
     - parameter tokensCreateRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func tokensCreate(tokensCreateRequest: TokensCreateRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return tokensCreateWithRequestBuilder(tokensCreateRequest: tokensCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Token
     - POST /tokens
     - Creates an on-chain token with provided metadata.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter tokensCreateRequest: (body)  
     - returns: RequestBuilder<TransactionSubmissionResponse> 
     */
    open class func tokensCreateWithRequestBuilder(tokensCreateRequest: TokensCreateRequest) -> RequestBuilder<TransactionSubmissionResponse> {
        let localVariablePath = "/tokens"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tokensCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionSubmissionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Token
     
     - parameter network: (query)  
     - parameter token: (query) token contract address or symbol in case of the gas token 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func tokensGet(network: Network, token: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetTokenResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return tokensGetWithRequestBuilder(network: network, token: token).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Token
     - GET /tokens/tokens
     - Gets the metadata for a token.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter network: (query)  
     - parameter token: (query) token contract address or symbol in case of the gas token 
     - returns: RequestBuilder<GetTokenResponse> 
     */
    open class func tokensGetWithRequestBuilder(network: Network, token: String) -> RequestBuilder<GetTokenResponse> {
        let localVariablePath = "/tokens/tokens"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "network": (wrappedValue: network.encodeToJSON(), isExplode: true),
            "token": (wrappedValue: token.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetTokenResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List Token Balances
     
     - parameter network: (query)  
     - parameter walletAddress: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func tokensListBalances(network: Network, walletAddress: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [ListTokenBalancesResponseItem]?, _ error: Error?) -> Void)) -> RequestTask {
        return tokensListBalancesWithRequestBuilder(network: network, walletAddress: walletAddress).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Token Balances
     - GET /tokens/balances
     - Retrieves a list of token balances associated with a specific wallet address on a given network.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter network: (query)  
     - parameter walletAddress: (query)  
     - returns: RequestBuilder<[ListTokenBalancesResponseItem]> 
     */
    open class func tokensListBalancesWithRequestBuilder(network: Network, walletAddress: String) -> RequestBuilder<[ListTokenBalancesResponseItem]> {
        let localVariablePath = "/tokens/balances"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "network": (wrappedValue: network.encodeToJSON(), isExplode: true),
            "wallet_address": (wrappedValue: walletAddress.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[ListTokenBalancesResponseItem]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Mint Token
     
     - parameter tokensMintRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func tokensMint(tokensMintRequest: TokensMintRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return tokensMintWithRequestBuilder(tokensMintRequest: tokensMintRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Mint Token
     - POST /tokens/mint
     - Mints specified amount of token to the recipient.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter tokensMintRequest: (body)  
     - returns: RequestBuilder<TransactionSubmissionResponse> 
     */
    open class func tokensMintWithRequestBuilder(tokensMintRequest: TokensMintRequest) -> RequestBuilder<TransactionSubmissionResponse> {
        let localVariablePath = "/tokens/mint"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tokensMintRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionSubmissionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Transfer Token
     
     - parameter tokensTransferRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func tokensTransfer(tokensTransferRequest: TokensTransferRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: TransactionSubmissionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return tokensTransferWithRequestBuilder(tokensTransferRequest: tokensTransferRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Transfer Token
     - POST /tokens/transfer
     - Transfers the specified amount of tokens from `from` to `recipient`. The from address can only be the ones created in the project.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter tokensTransferRequest: (body)  
     - returns: RequestBuilder<TransactionSubmissionResponse> 
     */
    open class func tokensTransferWithRequestBuilder(tokensTransferRequest: TokensTransferRequest) -> RequestBuilder<TransactionSubmissionResponse> {
        let localVariablePath = "/tokens/transfer"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tokensTransferRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionSubmissionResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
