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
     Begin Passkey Registration
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersBeginPasskeyRegistration(apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AnyCodable, ErrorResponse>) -> Void)) -> RequestTask {
        return usersBeginPasskeyRegistrationWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Begin Passkey Registration
     - POST /users/passkey/begin-registration
     - Begin the passkey registration process
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func usersBeginPasskeyRegistrationWithRequestBuilder() -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/users/passkey/begin-registration"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create Session Challenge
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersCreateSessionChallenge(apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<SessionChallenge, ErrorResponse>) -> Void)) -> RequestTask {
        return usersCreateSessionChallengeWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Session Challenge
     - POST /users/create-session-challenge
     - Create a session challenge for a user
     - returns: RequestBuilder<SessionChallenge> 
     */
    open class func usersCreateSessionChallengeWithRequestBuilder() -> RequestBuilder<SessionChallenge> {
        let localVariablePath = "/users/create-session-challenge"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SessionChallenge>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Finish Passkey Registration
     
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersFinishPasskeyRegistration(body: AnyCodable, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return usersFinishPasskeyRegistrationWithRequestBuilder(body: body).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Finish Passkey Registration
     - POST /users/passkey/finish-registration
     - Finish the passkey registration process
     - Bearer Token:
       - type: http
       - name: BearerAuth
     - parameter body: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func usersFinishPasskeyRegistrationWithRequestBuilder(body: AnyCodable) -> RequestBuilder<Void> {
        let localVariablePath = "/users/passkey/finish-registration"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = WalletKitAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Session Challenge
     
     - parameter code: (query)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersGetSessionChallenge(code: String, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<SessionChallenge, ErrorResponse>) -> Void)) -> RequestTask {
        return usersGetSessionChallengeWithRequestBuilder(code: code).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get Session Challenge
     - GET /users/session-challenge
     - Get a session challenge by code
     - parameter code: (query)  
     - returns: RequestBuilder<SessionChallenge> 
     */
    open class func usersGetSessionChallengeWithRequestBuilder(code: String) -> RequestBuilder<SessionChallenge> {
        let localVariablePath = "/users/session-challenge"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "code": (wrappedValue: code.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SessionChallenge>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Login Anonymously
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersLoginAnonymously(apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Session, ErrorResponse>) -> Void)) -> RequestTask {
        return usersLoginAnonymouslyWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
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
     Login with Discoverable Passkey
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersLoginWithDiscoverablePasskey(apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AnyCodable, ErrorResponse>) -> Void)) -> RequestTask {
        return usersLoginWithDiscoverablePasskeyWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Login with Discoverable Passkey
     - POST /users/login-with-discoverable-passkey
     - Log a user in with a discoverable passkey
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func usersLoginWithDiscoverablePasskeyWithRequestBuilder() -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/users/login-with-discoverable-passkey"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Login with Email
     
     - parameter usersLoginWithEmailRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersLoginWithEmail(usersLoginWithEmailRequest: UsersLoginWithEmailRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<LoginWithEmailResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return usersLoginWithEmailWithRequestBuilder(usersLoginWithEmailRequest: usersLoginWithEmailRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
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
     Login with Magic Link
     
     - parameter usersLoginWithEmailRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersLoginWithMagicLink(usersLoginWithEmailRequest: UsersLoginWithEmailRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<SessionChallenge, ErrorResponse>) -> Void)) -> RequestTask {
        return usersLoginWithMagicLinkWithRequestBuilder(usersLoginWithEmailRequest: usersLoginWithEmailRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Login with Magic Link
     - POST /users/login-with-magic-link
     - Log a user in with their email and magic link
     - parameter usersLoginWithEmailRequest: (body)  
     - returns: RequestBuilder<SessionChallenge> 
     */
    open class func usersLoginWithMagicLinkWithRequestBuilder(usersLoginWithEmailRequest: UsersLoginWithEmailRequest) -> RequestBuilder<SessionChallenge> {
        let localVariablePath = "/users/login-with-magic-link"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: usersLoginWithEmailRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SessionChallenge>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Login with Passkey
     
     - parameter usersLoginWithPasskeyRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersLoginWithPasskey(usersLoginWithPasskeyRequest: UsersLoginWithPasskeyRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AnyCodable, ErrorResponse>) -> Void)) -> RequestTask {
        return usersLoginWithPasskeyWithRequestBuilder(usersLoginWithPasskeyRequest: usersLoginWithPasskeyRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Login with Passkey
     - POST /users/login-with-passkey
     - Log a user in with a passkey
     - parameter usersLoginWithPasskeyRequest: (body)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func usersLoginWithPasskeyWithRequestBuilder(usersLoginWithPasskeyRequest: UsersLoginWithPasskeyRequest) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/users/login-with-passkey"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: usersLoginWithPasskeyRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Login with Wallet
     
     - parameter usersLoginWithWalletRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersLoginWithWallet(usersLoginWithWalletRequest: UsersLoginWithWalletRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<LoginWithWalletResponse, ErrorResponse>) -> Void)) -> RequestTask {
        return usersLoginWithWalletWithRequestBuilder(usersLoginWithWalletRequest: usersLoginWithWalletRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Login with Wallet
     - POST /users/login-with-wallet
     - Log a user in with their wallet using Sign in with Ethereum.
     - parameter usersLoginWithWalletRequest: (body)  
     - returns: RequestBuilder<LoginWithWalletResponse> 
     */
    open class func usersLoginWithWalletWithRequestBuilder(usersLoginWithWalletRequest: UsersLoginWithWalletRequest) -> RequestBuilder<LoginWithWalletResponse> {
        let localVariablePath = "/users/login-with-wallet"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: usersLoginWithWalletRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LoginWithWalletResponse>.Type = WalletKitAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Logout
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersLogout(apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return usersLogoutWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Logout
     - POST /users/logout
     - Log a user out and clear session cookies (only available in SDKs)
     - returns: RequestBuilder<Void> 
     */
    open class func usersLogoutWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/users/logout"
        let localVariableURLString = WalletKitAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = WalletKitAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Refresh Token
     
     - parameter usersRefreshTokenRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersRefreshToken(usersRefreshTokenRequest: UsersRefreshTokenRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Session, ErrorResponse>) -> Void)) -> RequestTask {
        return usersRefreshTokenWithRequestBuilder(usersRefreshTokenRequest: usersRefreshTokenRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
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
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func usersVerifyLogin(usersVerifyLoginRequest: UsersVerifyLoginRequest, apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Session, ErrorResponse>) -> Void)) -> RequestTask {
        return usersVerifyLoginWithRequestBuilder(usersVerifyLoginRequest: usersVerifyLoginRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Verify Login
     - POST /users/verify-login
     - Verify a user's login challenge and create a session.
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
