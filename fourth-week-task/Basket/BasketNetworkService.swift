//
//  BasketNetworkService.swift
//  fourth-week-task
//
//  Created by islam on 09.02.2022.
//

import Foundation

class BasketNetworkService {
    private init() {}
    
    static func getBasket(completion: @escaping(GetBasketResponse) -> ()) {
        guard let url = URL(string: "https://peretz-group.ru/api/v2/products?category=106&key=20be9031474183ea92958d5e255d888e47bdad44afd5d7b7201d0eb572be5278") else { return }
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetBasketResponse(json: json)
//                print(try GetBasketResponse(json: json))
//                print("123")
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
