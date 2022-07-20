//
//  NetworkError.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import Foundation

/// Base struct for network error
struct NetworkError: Error {
    
    /// Not the default network error message, it is defined when using it
    let errorMsg: String
    
    /// Generic error message
    static let genericError = {
        NetworkError(errorMsg: "Something went wrong")
    }
}
