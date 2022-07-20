//
//  NetworkConstants.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import Alamofire

struct NetworkConstants {
    
    /// API's base url
    static let baseUrl = "https://fapi.binance.com/fapi/v1/"
    
    /// API's path for lines
    static let kLines = "klines"
}

/// API's parameters symbols
enum Symbol: String {
    case btc = "BTCUSDT"
    case eth = "ETHUSDT"
    case ltc = "LTCUSDT"
}

/// API's parameters intervals
enum Interval: String {
    case fifteen = "15m"
    case thirty = "30m"
    case hour = "1h"
}

/// API's parameters limit
enum limit: String {
    case hundred = "100"
    case fiveHundred = "500"
    case fifteenHundred = "1500"
}
