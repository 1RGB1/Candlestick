//
//  KLinesRouter.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import Foundation
import Alamofire

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
                "symbol" : symbol,
                "interval" : Interval.thirty.rawValue,
                "limit" : limit.hundred.rawValue
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
