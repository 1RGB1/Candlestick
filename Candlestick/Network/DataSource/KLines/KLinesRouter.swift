//
//  KLinesRouter.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import Foundation
import Alamofire

enum KLinesParameters: String {
    case symbol = "symbol"
    case interval = "interval"
    case limit = "limit"
}

enum KLinesRouter: ApiBaseRouter {
    case getKLines(String)
}

extension KLinesRouter {
    
    var path: String {
        return NetworkConstants.kLines
    }
    
    var parameters: [String : Any]? {
        switch self {
        case .getKLines(let symbol):
            return [
                KLinesParameters.symbol.rawValue : symbol,
                KLinesParameters.interval.rawValue : Interval.thirty.rawValue,
                KLinesParameters.limit.rawValue : limit.hundred.rawValue
            ]
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getKLines:
            return .get
        }
    }
}
