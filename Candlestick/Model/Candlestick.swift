//
//  Candlestick.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import UIKit

struct Candlestick {
    var openTime: Date = Date()
    var open: Double = 0
    var high: Double = 0
    var low: Double = 0
    var close: Double = 0
    var volume: Double = 0
    var closeTime: Date = Date()
    var quoteAssetVolume: Double = 0
    var numberOfTrades: Int = 0
    var takerBuyBaseAssetVolume: Double = 0
    var takerBuyQuoteAssetVolume: Double = 0
    var ignore: Double = 0
}
