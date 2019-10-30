//
//  ApiProvider.swift
//  CarRentalApp
//
//  Created by Andrew on 23.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import Foundation
import Combine

enum RESTClientError : Error {
    case error(_ error: String)
}

class ApiProvider {
    
    func get<T: Codable>(_ api: ApiController) -> AnyPublisher<T, RESTClientError> {
        let session = URLSession.shared
        let url = URL(string: "\(Constants.API.baseUrl.rawValue)\(api.route)")!
        
        return session.dataTaskPublisher(for: url)
            .map({ $0.data })
            .decode(type: T.self, decoder: JSONDecoder())
            .mapError({ RESTClientError.error($0.localizedDescription) })
            .eraseToAnyPublisher()
    }
}
