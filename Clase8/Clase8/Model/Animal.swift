//
//  Animal.swift
//  Clase8
//
//  Created by Alumno on 12/5/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import Foundation

struct Animal {
    let image : String
    let name : String
    let breeds : [Breed]
}

struct Breed {
    let image : String
    let name : String
    let description : String
}
