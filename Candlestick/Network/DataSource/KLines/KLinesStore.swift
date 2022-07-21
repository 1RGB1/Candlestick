//
//  KLinesStore.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import Foundation
import SwiftyJSON

protocol KLinesStoreProtocol {
    func loadKLines(symbole: String, withCompletionBlock completion: @escaping (Result<[Candlestick], NetworkError>) -> Void)
}

class KLinesStore: KLinesStoreProtocol {
    
    /// To load KLines
    /// - Parameters:
    ///   - Symbole:    for data related to currency conversion to USD
    ///   - completion: completion block with model or with the network error
    func loadKLines(symbole: String, withCompletionBlock completion: @escaping (Result<[Candlestick], NetworkError>) -> Void) {

        let router = KLinesRouter.getKLines(symbole)
        NetworkManager.shared.getData(request: router) { result in
            switch result {
            case .success(let jsonString):
                let json = JSON(parseJSON: jsonString)
                
                if json["code"].intValue == 0 {
                    let candlesticks = CandlestickParser().parse(json)
                    completion(.success(candlesticks))
                } else {
                    completion(.failure(NetworkError(errorMsg: json["msg"].stringValue)))
                }
                
            case .failure:
                completion(.failure(NetworkError.genericError()))
            }
        }
    }
}
