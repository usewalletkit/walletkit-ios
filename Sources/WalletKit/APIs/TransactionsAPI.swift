//
// TransactionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class TransactionsAPI {

    /**
     Batch Sign and Send
     
     - parameter transactionsBatchSignAndSendRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionsBatchSignAndSend(transactionsBatchSignAndSendRequest: TransactionsBatchSignAndSendRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<TransactionSubmissionResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionsBatchSignAndSendWithRequestBuilder(transactionsBatchSignAndSendRequest: transactionsBatchSignAndSendRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Batch Sign and Send
     - POST /transactions/batch-sign-and-send
     - This endpoint makes arbitrary smart contract function calls in batch.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter transactionsBatchSignAndSendRequest: (body)  
     - returns: RequestBuilder<TransactionSubmissionResponse> 
     */
    open class func transactionsBatchSignAndSendWithRequestBuilder(transactionsBatchSignAndSendRequest: TransactionsBatchSignAndSendRequest) -> RequestBuilder<TransactionSubmissionResponse> {
        let localVariablePath = "/transactions/batch-sign-and-send"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionsBatchSignAndSendRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionSubmissionResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Transaction Status By Hash
     
     - parameter network: (query)  
     - parameter transactionHash: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionsGetStatus(network: Network, transactionHash: String, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<GetTransactionStatusByHashResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionsGetStatusWithRequestBuilder(network: network, transactionHash: transactionHash).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Transaction Status By Hash
     - GET /transactions/status-by-hash
     - Retrieves the status of a transaction by its hash.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter network: (query)  
     - parameter transactionHash: (query)  
     - returns: RequestBuilder<GetTransactionStatusByHashResponse> 
     */
    open class func transactionsGetStatusWithRequestBuilder(network: Network, transactionHash: String) -> RequestBuilder<GetTransactionStatusByHashResponse> {
        let localVariablePath = "/transactions/status-by-hash"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "network": (wrappedValue: network.encodeToJSON(), isExplode: true),
            "transaction_hash": (wrappedValue: transactionHash.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetTransactionStatusByHashResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Preview
     
     - parameter transactionsPreviewRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionsPreview(transactionsPreviewRequest: TransactionsPreviewRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<PreviewResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionsPreviewWithRequestBuilder(transactionsPreviewRequest: transactionsPreviewRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Preview
     - POST /transactions/preview
     - This endpoint allows you to preview a transaction’s execution without sending it to the blockchain.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter transactionsPreviewRequest: (body)  
     - returns: RequestBuilder<PreviewResponse> 
     */
    open class func transactionsPreviewWithRequestBuilder(transactionsPreviewRequest: TransactionsPreviewRequest) -> RequestBuilder<PreviewResponse> {
        let localVariablePath = "/transactions/preview"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionsPreviewRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PreviewResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Preview Bundle
     
     - parameter transactionsPreviewBundleRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionsPreviewBundle(transactionsPreviewBundleRequest: TransactionsPreviewBundleRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<[PreviewResponse], ErrorResponse>) -> Void)) -> RequestTask {
        return transactionsPreviewBundleWithRequestBuilder(transactionsPreviewBundleRequest: transactionsPreviewBundleRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Preview Bundle
     - POST /transactions/preview-bundle
     - This endpoint allows you to preview a bundle of transactions as it would execute on chain and returns results for each transaction.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter transactionsPreviewBundleRequest: (body)  
     - returns: RequestBuilder<[PreviewResponse]> 
     */
    open class func transactionsPreviewBundleWithRequestBuilder(transactionsPreviewBundleRequest: TransactionsPreviewBundleRequest) -> RequestBuilder<[PreviewResponse]> {
        let localVariablePath = "/transactions/preview-bundle"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionsPreviewBundleRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[PreviewResponse]>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Sign and Send
     
     - parameter transactionsSignAndSendRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionsSignAndSend(transactionsSignAndSendRequest: TransactionsSignAndSendRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<TransactionSubmissionResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionsSignAndSendWithRequestBuilder(transactionsSignAndSendRequest: transactionsSignAndSendRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Sign and Send
     - POST /transactions/sign-and-send
     - This endpoint allows arbitrary smart contract function calls. It can be used to interact with smart contracts that are not supported by the Token/NFT APIs.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter transactionsSignAndSendRequest: (body)  
     - returns: RequestBuilder<TransactionSubmissionResponse> 
     */
    open class func transactionsSignAndSendWithRequestBuilder(transactionsSignAndSendRequest: TransactionsSignAndSendRequest) -> RequestBuilder<TransactionSubmissionResponse> {
        let localVariablePath = "/transactions/sign-and-send"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionsSignAndSendRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransactionSubmissionResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Sign Message
     
     - parameter transactionsSignMessageRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionsSignMessage(transactionsSignMessageRequest: TransactionsSignMessageRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<SignMessageResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionsSignMessageWithRequestBuilder(transactionsSignMessageRequest: transactionsSignMessageRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Sign Message
     - POST /transactions/sign-message
     - This endpoint calculates a network-specific signature (e.g. in EIP-191 format EVM networks) for the provided message.
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter transactionsSignMessageRequest: (body)  
     - returns: RequestBuilder<SignMessageResponse> 
     */
    open class func transactionsSignMessageWithRequestBuilder(transactionsSignMessageRequest: TransactionsSignMessageRequest) -> RequestBuilder<SignMessageResponse> {
        let localVariablePath = "/transactions/sign-message"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transactionsSignMessageRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SignMessageResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Transaction Status by ID
     
     - parameter id: (query) transaction id returned in POST requests that result in a transaction. e.g. Transfer Token (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionsStatusById(id: String? = nil, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<GetTransactionStatusByIdResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionsStatusByIdWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Transaction Status by ID
     - GET /transactions/status-by-id
     - Retrieves the status of a transaction by its id returned from the APIs that change the state of blockchain` (e.g. /tokens/transfer)`
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter id: (query) transaction id returned in POST requests that result in a transaction. e.g. Transfer Token (optional)
     - returns: RequestBuilder<GetTransactionStatusByIdResponse> 
     */
    open class func transactionsStatusByIdWithRequestBuilder(id: String? = nil) -> RequestBuilder<GetTransactionStatusByIdResponse> {
        let localVariablePath = "/transactions/status-by-id"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": (wrappedValue: id?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetTransactionStatusByIdResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
