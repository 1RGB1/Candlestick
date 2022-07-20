//
//  NetworkManager.swift
//  Candlestick
//
//  Created by Ahmad Ragab on 20/07/2022.
//

import Foundation
import Alamofire

/// Singletone manager to handle all api calls
struct NetworkManager {
    
    private init() {}
    
    static let shared: NetworkManager = {
        let instance = NetworkManager()
        return instance
    } ()
    
    /// To load data from api in a generic way
    /// - Parameters:
    ///   - request:    request conforming base router combined with all required attributes for calling the api
    ///   - completion: completion block with model or with the network error
    func getData(request: URLRequestConvertible, completion: @escaping (Result<String, NetworkError>) -> Void) {
        AF.request(request).responseString { response in
            switch response.result {
            case .success(let jsonString):
                completion(.success(jsonString))
                
            case .failure:
                completion(.failure(NetworkError.genericError()))
            }
        }
    }
}
