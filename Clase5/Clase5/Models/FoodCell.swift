//
//  FoodCell.swift
//  Clase5
//
//  Created by Alumno on 11/26/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import Foundation

struct FoodCell {
    let type : FoodCellType
    let food : Food
}

enum FoodCellType {
    case left, right, middle
}
