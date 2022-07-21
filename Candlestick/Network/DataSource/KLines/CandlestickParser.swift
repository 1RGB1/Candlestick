//
//  CandlestickParser.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import Foundation
import SwiftyJSON

class CandlestickParser {
    func parse(_ jsons: JSON) -> [Candlestick] {
        return jsons.arrayValue.map { json in
            return Candlestick(
                openTime: Date(timeIntervalSince1970: json.arrayValue[0].doubleValue / 1000),
                open: json.arrayValue[1].doubleValue,
                high: json.arrayValue[2].doubleValue,
                low: json.arrayValue[3].doubleValue,
                close: json.arrayValue[4].doubleValue,
                volume: json.arrayValue[5].doubleValue,
                closeTime: Date(timeIntervalSince1970: json.arrayValue[6].doubleValue / 1000),
                quoteAssetVolume: json.arrayValue[7].doubleValue,
                numberOfTrades: json.arrayValue[8].intValue,
                takerBuyBaseAssetVolume: json.arrayValue[9].doubleValue,
                takerBuyQuoteAssetVolume: json.arrayValue[10].doubleValue,
                ignore: json.arrayValue[11].doubleValue
            )
        }
    }
}
