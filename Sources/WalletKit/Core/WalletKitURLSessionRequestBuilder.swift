//
//  WalletKitURLSessionRequestBuilder.swift
//  
//
//  Created by Pol Chen on 2023/10/31.
//

import Foundation

final class WalletKitURLSessionRequestBuilderFactory: RequestBuilderFactory {

    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type {
        return URLSessionRequestBuilder<T>.self
    }

    func getBuilder<T: Decodable>() -> RequestBuilder<T>.Type {
        return WalletKitURLSessionDecodableRequestBuilder<T>.self
    }
}

final class WalletKitURLSessionDecodableRequestBuilder<T: Decodable>: URLSessionDecodableRequestBuilder<T> {

    override func execute(_ apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, _ completion: @escaping (Result<Response<T>, ErrorResponse>) -> Void) -> RequestTask {
        if requiresAuthentication {
            WalletKitAPI.tokenProvider.getAccessToken { accessToken in
                guard let accessToken else {
                    apiResponseQueue.async {
                        completion(.failure(ErrorResponse.error(401, nil, nil, TokenError.accessTokenMissing)))
                    }
                    return
                }
                self.addHeaders([
                    "Authorization": "Bearer \(accessToken)",
                    "X-WalletKit-Token-Source": WalletKitAPI.tokenSource.rawValue,
                ])
                super.execute(apiResponseQueue, completion)
            }
        } else {
            super.execute(apiResponseQueue, completion)
        }

        return requestTask
    }
}
