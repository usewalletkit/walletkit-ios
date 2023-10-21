# UsersAPI

All URIs are relative to *https://testnet.usewalletkit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersLoginAnonymously**](UsersAPI.md#usersloginanonymously) | **POST** /users/login-anonymously | Login Anonymously
[**usersLoginWithEmail**](UsersAPI.md#usersloginwithemail) | **POST** /users/login-with-email | Login with Email
[**usersRefreshToken**](UsersAPI.md#usersrefreshtoken) | **POST** /users/refresh-token | Refresh Token
[**usersVerifyLogin**](UsersAPI.md#usersverifylogin) | **POST** /users/verify-login | Verify Login


# **usersLoginAnonymously**
```swift
    open class func usersLoginAnonymously(completion: @escaping (_ data: Session?, _ error: Error?) -> Void)
```

Login Anonymously

Create an anonymous user session

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit


// Login Anonymously
UsersAPI.usersLoginAnonymously() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Session**](Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersLoginWithEmail**
```swift
    open class func usersLoginWithEmail(usersLoginWithEmailRequest: UsersLoginWithEmailRequest, completion: @escaping (_ data: LoginWithEmailResponse?, _ error: Error?) -> Void)
```

Login with Email

Log a user in with their email.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let usersLoginWithEmailRequest = users_login_with_email_request(email: "email_example") // UsersLoginWithEmailRequest | 

// Login with Email
UsersAPI.usersLoginWithEmail(usersLoginWithEmailRequest: usersLoginWithEmailRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersLoginWithEmailRequest** | [**UsersLoginWithEmailRequest**](UsersLoginWithEmailRequest.md) |  | 

### Return type

[**LoginWithEmailResponse**](LoginWithEmailResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRefreshToken**
```swift
    open class func usersRefreshToken(usersRefreshTokenRequest: UsersRefreshTokenRequest, completion: @escaping (_ data: Session?, _ error: Error?) -> Void)
```

Refresh Token

Refresh an access token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let usersRefreshTokenRequest = users_refresh_token_request(sessionId: "sessionId_example", refreshToken: "refreshToken_example") // UsersRefreshTokenRequest | 

// Refresh Token
UsersAPI.usersRefreshToken(usersRefreshTokenRequest: usersRefreshTokenRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersRefreshTokenRequest** | [**UsersRefreshTokenRequest**](UsersRefreshTokenRequest.md) |  | 

### Return type

[**Session**](Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersVerifyLogin**
```swift
    open class func usersVerifyLogin(usersVerifyLoginRequest: UsersVerifyLoginRequest, completion: @escaping (_ data: Session?, _ error: Error?) -> Void)
```

Verify Login

Verify a user's login code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import WalletKit

let usersVerifyLoginRequest = users_verify_login_request(userId: "userId_example", verificationCode: "verificationCode_example") // UsersVerifyLoginRequest | 

// Verify Login
UsersAPI.usersVerifyLogin(usersVerifyLoginRequest: usersVerifyLoginRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersVerifyLoginRequest** | [**UsersVerifyLoginRequest**](UsersVerifyLoginRequest.md) |  | 

### Return type

[**Session**](Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

