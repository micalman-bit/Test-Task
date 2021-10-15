//
//  NetworkRequest.swift
//  TestTask
//
//  Created by Andrey Samchenko on 14.10.2021.
//

import Foundation

class NetworkRequest {
    
    static let shared = NetworkRequest()
    
    private init() {}
    
    func requestData(urlString: String, complition: @escaping (Result<Data, Error>) -> Void) {
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    complition(.failure(error))
                }
                
                guard let data = data else { return }
                complition(.success(data))
                
            }
        }
        .resume()
    }
}
