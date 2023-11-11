//
//  LocalizedErrorResponse.swift
//  
//
//  Created by Pol Chen on 2023/11/11.
//

import Foundation

extension ErrorResponse: LocalizedError {

    public var errorDescription: String? {
        switch self {
        case .error(_, _, _, let error):
            return error.localizedDescription
        }
    }
}
