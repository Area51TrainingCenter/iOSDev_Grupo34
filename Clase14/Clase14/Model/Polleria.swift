//
//  Polleria.swift
//  Clase14
//
//  Created by Alumno on 1/9/20.
//  Copyright © 2020 Area51 Training Center. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Polleria {
    var id : Int?
    var name : String?
    var url : String?
    var locales : Int?
    
    static func get(completionHandler: @escaping ([Polleria]?) -> ()) {
        Alamofire.request("http://www.jcodee.com/pollerias.php", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseJSON { (response) in
            if let value = response.result.value {
                let json = JSON(value)
                print(json)
                var pollerias = [Polleria]()
                if json["status"] == "OK" {
                    if let array = json["data"].array {
                        for i in 0..<array.count {
                            let polleria = Polleria()
                            polleria.id = array[i]["id"].intValue
                            polleria.name = array[i]["name"].stringValue
                            polleria.locales = array[i]["nroLocales"].intValue
                            polleria.url = array[i]["url"].stringValue
                            pollerias.append(polleria)
                        }
                        completionHandler(pollerias)
                    }
                } else {
                    completionHandler(nil)
                }
            }
        }
    }
    
}

