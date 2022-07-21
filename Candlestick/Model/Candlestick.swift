//
//  Candlestick.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import UIKit

struct Candlestick {
    let openTime: Date
    let open: Double
    let high: Double
    let low: Double
    let close: Double
    let volume: Double
    let closeTime: Date
    let quoteAssetVolume: Double
    let numberOfTrades: Int
    let takerBuyBaseAssetVolume: Double
    let takerBuyQuoteAssetVolume: Double
    let ignore: Double
}
