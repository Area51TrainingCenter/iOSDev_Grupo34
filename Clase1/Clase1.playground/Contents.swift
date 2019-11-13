import UIKit

var str = "Hello, playground"

str = "Hola, patio de juegos"

let num = 5
//num = 6

/*
 Bloque de comentario
 */
print(num)
let 😡 = "Hola estoy armagado"
print(😡)
//No toques esto ☠️☠️☠️☠️☠️☠️☠️
let ñino = "Niño"
let π = 3.1416
let ã = "Soy un caracter especial"
let camelCase = ""
let kProyBaseUrl = "asdasda.com"

struct Person {
    let firstName : String
    let lastName : String
    
    init(first: String, second: String) {
        self.firstName = first
        self.lastName = second
    }
    
    init(first: String) {
        self.firstName = first
        self.lastName = "Hoyos"
    }
    
    func sayHello() {
        print("Hola! \(firstName) \(lastName)")
    }
}

let personA = Person(first: "Eduardo", second: "Hoyos")
personA.sayHello()
let array = ["name": "Eduardo", "lastname": "Hoyos"]
// * / + -

if (num == 3 && str == "Hola") || num == 0 {
    print("Num es 3")
} else {
    print("Num es \(num)")
}
let numberOfWheels = 2
switch numberOfWheels {
case 0:
    print("No es un vehículo")
case 1:
    print("Es un monociclo")
case 2:
    print("Es una bicicleta")
case 3:
    print("Es un triciclo")
case 4:
    print("Es un auto")
default:
    print("Es otro vehículo")
}

let distance = 300
switch distance {
case 0...99:
    print("Estamos cerca")
case 100...199:
    print("Nos acercamos")
case 200...500:
    print("Estamos todavía lejos")
default:
    print("Estas lejazos")
}
//< > <= >=





















