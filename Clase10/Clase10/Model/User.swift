//
//  User.swift
//  Clase10
//
//  Created by Alumno on 12/17/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import Firebase

struct User {
    var uid : String?
    var name : String?
    var lastname : String?
    var email : String?
    var age : Int?
    var phone : String?
    var address : String?
    
    //Desde Firebase
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        uid = snapshot.key
        name = snapshotValue["name"] as? String ?? ""
        lastname = snapshotValue["lastname"] as? String ?? ""
        email = snapshotValue["email"] as? String ?? ""
        age = snapshotValue["age"] as? Int ?? 0
        phone = snapshotValue["phone"] as? String ?? ""
        address = snapshotValue["address"] as? String ?? ""
    }
    
    //Inicializador
    init(uid: String, name: String, lastname: String, email: String, age: Int, phone: String, address: String ) {
        self.uid = uid
        self.name = name
        self.lastname = lastname
        self.email = email
        self.age = age
        self.phone = phone
        self.address = address
    }
    
    func toAny() -> Any {
        return [
            "uid":uid,
            "name":name,
            "lastname": lastname,
            "phone": phone,
            "address": address,
            "age": age
        ]
    }
    
}

