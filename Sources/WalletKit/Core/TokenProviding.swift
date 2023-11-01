//
//  TokenProviding.swift
//  
//
//  Created by Pol Chen on 2023/10/31.
//

import Foundation

public enum TokenError: Error {

    /// The access token is missing while it's expected to be present.
    case accessTokenMissing
}

public protocol TokenProviding {

    /// Returns the access token for WalletKit to use when constructing requests.
    ///
    /// The provider should handle token refresh if needed in this method and return the latest valid access token.
    /// Returning `nil` indicates that an access token is unavailable at the moment.
    func getAccessToken(completion: @escaping ((String?) -> Void))
}
