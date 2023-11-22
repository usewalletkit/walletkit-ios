//
//  MockRequestBuilder.swift
//  
//
//  Created by Pol Chen on 2023/11/22.
//

import Foundation
import WalletKit

protocol MockDataResponse {

    static var mockDataResponse: Self { get }
}

final class MockRequestBuilderFactory: RequestBuilderFactory {

    func getNonDecodableBuilder<T>() -> RequestBuilder<T>.Type {
        return URLSessionRequestBuilder<T>.self
    }

    func getBuilder<T: Decodable>() -> RequestBuilder<T>.Type {
        return MockDecodableRequestBuilder<T>.self
    }
}

final class MockDecodableRequestBuilder<T: Decodable>: URLSessionDecodableRequestBuilder<T> {

    override func execute(_ apiResponseQueue: DispatchQueue = WalletKitAPI.apiResponseQueue, _ completion: @escaping (Result<Response<T>, ErrorResponse>) -> Void) -> RequestTask {
        if let body = (T.self as? MockDataResponse.Type)?.mockDataResponse as? T {
            completion(.success(Response<T>.init(response: .init(), body: body, bodyData: nil)))
        } else {
            completion(.failure(ErrorResponse.error(42, nil, nil, MockError.somethingWentWrong)))
        }

        return requestTask
    }
}
