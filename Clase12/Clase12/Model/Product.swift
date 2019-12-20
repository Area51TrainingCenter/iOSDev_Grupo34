//
//  Product.swift
//  Clase12
//
//  Created by Alumno on 12/19/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import Foundation

struct Product {
    let name : String
    let description : String
    let brand : String
    let price : Double
    let commercialCode : String
    let quantity : Int
    let category:  String
    let imageUrl : String
    
    init(name: String, description: String, brand: String, price: Double, commercialCode: String, quantity: Int, category: String, imageUrl: String) {
        self.name = name
        self.description = description
        self.brand = brand
        self.price = price
        self.commercialCode = commercialCode
        self.quantity = quantity
        self.category = category
        self.imageUrl = imageUrl
    }
    
    init(dictionary: [String : Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.description = dictionary["description"] as? String ?? ""
        self.brand = dictionary["brand"] as? String ?? ""
        self.price = dictionary["price"] as? Double ?? 0
        self.commercialCode = dictionary["commercialCode"] as? String ?? ""
        self.quantity = dictionary["quantity"] as? Int ?? 0
        self.category = dictionary["category"] as? String ?? ""
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}

struct ProductImage {
    let name : String
    let imageUrl : String
}
