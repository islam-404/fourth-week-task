//
//  Basket.swift
//  fourth-week-task
//
//  Created by islam on 09.02.2022.
//

import Foundation

struct Basket {
    var id: Int
    var date: String
    var name: String
    var description: String
    var new: Bool
    var variations: Array<Any>
    var price: Int
    var imageApp: String
    var image: String
    var sort: Int
    
    init?(dict: [String: AnyObject]) {
        guard let id = dict["id"] as? Int,
        let date = dict["date"] as? String,
        let name = dict["name"] as? String,
        let description = dict["description"] as? String,
        let new = dict["new"] as? Bool,
        let variations = dict["variations"] as? Array<Any>,
        let price = dict["price"] as? Int,
        let imageApp = dict["image_app"] as? String,
        let image = dict["image"] as? String,
        let sort = dict["sort"] as? Int else { return nil }
        
        self.id =  id
        self.date = date
        self.name = name
        self.description = description
        self.new = new
        self.variations = variations
        self.price = price
        self.imageApp = imageApp
        self.image = image
        self.sort = sort
    }
}


/*
 
 "id": 947,
   "date": "04.05.2020 19:54:02",
   "name": "Гюзаль",
   "description": "Баклажан жареный",
   "new": false,
   "variations": [],
   "price": 278,
   "image_app": ",
   "image": "",
   "sort": 500
 
 */
