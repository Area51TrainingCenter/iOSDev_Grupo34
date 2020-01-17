//
//  ShoppingCart.swift
//  Clase16
//
//  Created by Alumno on 1/16/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import Foundation

struct ShoppingCart {
    var products : [Product]
    
    
}

struct Product {
    var name : String
    var price : Double
    
    mutating func apply(_ coupon:  Coupon) {
        let mult = 1 - (coupon.discount / 100)
        price *= mult
    }
}

struct Coupon {
    var name : String
    var discount : Double
}
