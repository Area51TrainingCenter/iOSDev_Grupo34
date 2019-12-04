//
//  UserDefaultsService.swift
//  Clase7
//
//  Created by Alumno on 12/3/19.
//  Copyright © 2019 Area51 Training Center. All rights reserved.
//

import Foundation

class UserDefaultsService {
    static func save(username value: String) {
        //Guardar el nombre de usuario en UserDefaults
        UserDefaults.standard.set(value, forKey: "username")
        UserDefaults.standard.synchronize()
    }
    
    static func getUsername() -> String? {
        //Obtiene el usuario en UserDefaults
        return UserDefaults.standard.object(forKey: "username") as? String
    }
    
    static func removeUsername() {
        //Remueve el usuario de UserDefaults
        UserDefaults.standard.removeObject(forKey: "username")
        UserDefaults.standard.synchronize()
    }
}
