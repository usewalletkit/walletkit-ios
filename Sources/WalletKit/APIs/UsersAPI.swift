//
// UsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class UsersAPI {

    /**
     Login Anonymously
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func usersLoginAnonymously(apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ data: Session?, _ error: Error?) -> Void)) -> RequestTask {
        return usersLoginAnonymouslyWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Login Anonymously
     - POST /users/login-anonymously
     - Create an anonymous user session
     - returns: RequestBuilder<Session> 
     */
    open class func usersLoginAnonymouslyWithRequestBuilder() -> RequestBuilder<Session> {
        let localVariablePath = "/users/login-anonymously"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Session>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Login with Email
     
     - parameter usersLoginWithEmailRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func usersLoginWithEmail(usersLoginWithEmailRequest: UsersLoginWithEmailRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ data: LoginWithEmailResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return usersLoginWithEmailWithRequestBuilder(usersLoginWithEmailRequest: usersLoginWithEmailRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Login with Email
     - POST /users/login-with-email
     - Log a user in with their email.
     - parameter usersLoginWithEmailRequest: (body)  
     - returns: RequestBuilder<LoginWithEmailResponse> 
     */
    open class func usersLoginWithEmailWithRequestBuilder(usersLoginWithEmailRequest: UsersLoginWithEmailRequest) -> RequestBuilder<LoginWithEmailResponse> {
        let localVariablePath = "/users/login-with-email"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: usersLoginWithEmailRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LoginWithEmailResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Refresh Token
     
     - parameter usersRefreshTokenRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func usersRefreshToken(usersRefreshTokenRequest: UsersRefreshTokenRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ data: Session?, _ error: Error?) -> Void)) -> RequestTask {
        return usersRefreshTokenWithRequestBuilder(usersRefreshTokenRequest: usersRefreshTokenRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Refresh Token
     - POST /users/refresh-token
     - Refresh an access token
     - parameter usersRefreshTokenRequest: (body)  
     - returns: RequestBuilder<Session> 
     */
    open class func usersRefreshTokenWithRequestBuilder(usersRefreshTokenRequest: UsersRefreshTokenRequest) -> RequestBuilder<Session> {
        let localVariablePath = "/users/refresh-token"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: usersRefreshTokenRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Session>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Verify Login
     
     - parameter usersVerifyLoginRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func usersVerifyLogin(usersVerifyLoginRequest: UsersVerifyLoginRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ data: Session?, _ error: Error?) -> Void)) -> RequestTask {
        return usersVerifyLoginWithRequestBuilder(usersVerifyLoginRequest: usersVerifyLoginRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Verify Login
     - POST /users/verify-login
     - Verify a user's login code.
     - parameter usersVerifyLoginRequest: (body)  
     - returns: RequestBuilder<Session> 
     */
    open class func usersVerifyLoginWithRequestBuilder(usersVerifyLoginRequest: UsersVerifyLoginRequest) -> RequestBuilder<Session> {
        let localVariablePath = "/users/verify-login"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: usersVerifyLoginRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Session>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}