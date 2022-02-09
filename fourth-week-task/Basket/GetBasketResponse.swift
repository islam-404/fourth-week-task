//
//  GetBasketResponse.swift
//  fourth-week-task
//
//  Created by islam on 09.02.2022.
//

import Foundation

struct GetBasketResponse {
    typealias JSON = [String: AnyObject]
    let baskets: [Basket]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError }
        
        var baskets = [Basket]()
        for dictionary in array {
            guard let basket  = Basket(dict: dictionary) else { continue }
            baskets.append(basket)
        }
        self.baskets = baskets
    }
}
