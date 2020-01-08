//
//  People.swift
//  Clase13
//
//  Created by Alumno on 1/7/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import Foundation
import RealmSwift

class PeopleRealm : Object {
    
    @objc dynamic var name = ""
    @objc dynamic var lastname = ""
    @objc dynamic var age = 0
    
}
