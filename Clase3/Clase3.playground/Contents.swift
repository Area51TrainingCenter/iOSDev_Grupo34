import UIKit

var str = "Hello, playground"
let greeting = "Hola a todos"
//greeting = "jhg"


let saludoLargo = """
    Hola a todos
    Mi nombre es Eduardo
    """
print(saludoLargo)

let saludo = "Hola \"hola hola\""
print(saludo)

var empty = ""
if empty.isEmpty {
    print("El string es vacío")
}

let a = "a"
let b : Character = "b"
print(b)
//Comentario
/* Comentario tambien */

let string1 = "string1"
let string2 = "string2"
let myString = string1 + string2

var myString2 = "Hello"
myString2 = myString2 + ", world!"
myString2 += " Hello!"

let name = "Eduardo"
let age = 27
print("\(name) tiene \(age) años")


let c = 4
let d = 5
print("Si c es \(c) y d es \(d) entonces c+d es igual a      \(c + d)")

let month = "Enero"
let anotherMonth = "Enero"
let lowercaseMonth = "enero"

if month == anotherMonth {
    print("Son lo mismo")
}

if month != lowercaseMonth {
    print("Son diferentes")
}

let name1 = "Eduardo Hoyos"
if name1.lowercased() == "eduardo hoyos" {
    print("Los nombres son iguales")
}

let greeting2 = "Hello, world!"
print(greeting2.hasPrefix("Hell"))
print(greeting2.hasSuffix("world!"))
print(greeting2.hasSuffix("World!"))

let greeting3 = "Hola Javier, mi nombre es Eduardo"
if greeting3.contains("mi nombre es") {
    print("El string es un saludo")
}

//Contar caracteres
print(greeting3.count)

let newPassword = "1234"
if newPassword.count < 8 {
    print("La nueva clave tiene que contener mínimo 8 caracteres")
}

let someCharacter : Character = "b" //"a"

switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) es una vocal")
default:
    print("\(someCharacter) es consonante")
}

//UNICODE
let cow = "🐮"

//FUNCTIONS
func showPi() {
    print("3.1416")
}

showPi()

func triple(value: Int) {
    let result = value * 3
    print("Si multiplicas \(value) por 3, vas a obtener \(result)")
}
triple(value: 35)

func multiply(a: Int, b: Int) {
    print("La multiplicación de \(a) y \(b) es -> \(a * b)")
}
multiply(a: 4, b: 7)

func saludar(a: String, y: String) {
    print("Hola \(a) y \(y)")
}
saludar(a: "Edu", y: "Carlos")

func decirHola(a person: String, y otherPerson: String) {
    print("Hola \(person) y \(otherPerson)")
}
decirHola(a: "Edu", y: "Carlos")

func imprimir(_ message: String) {
    print(message)
}
imprimir("Mensaje para imprimir")

let _ = "Nada"

func arraySome(_ string: String...) {
    
}

arraySome("as", "Äsd", "asd")

func display(team: String, score: Int = 0) {
    print("El \(team) marcó \(score) goles")
}
display(team: "Manchester")
display(team: "Barcelona", score: 2)

func multiply1(a: Int, b: Int) -> Int {
    let result = a * b
    return result
}
func multiply1(a: Int, b: Int) -> String {
    let result = a * b
    return "La multiplicacion es \(result)"
}
let x : Int = multiply1(a: 4, b: 7)
print(x)
let y : String = multiply1(a: 5, b: 8)
print(y)

func abc(a: Int) -> String {
    return "\(a)"
}
func abc(a: String) -> String {
    return a
}
print(abc(a: 2))
print(abc(a: "123"))


//STRUCTS
struct Person {
    var name : String
    
    func sayHello() {
        print("\(name) dice \"Hola mundo!\"")
    }
}

let person : Person = Person(name: "Eduardo")
let otherPerson = Person(name: "Cesar")
person.sayHello()

struct Shirt {
    var size: Size
    var color: Color
}
enum Size {
    case S, M, L
}
enum Color {
    case red, blue, yellow
}
let shirt = Shirt(size: .M, color: .blue)

struct Car {
    var brand : String
    var year : Int
    var color : Color
    var topSpeed: Int
    
    func startEngine() {
        
    }
    func drive() {
        
    }
    func park() {
        
    }
}
let car1 = Car(brand: "Honda", year: 2019, color: .blue, topSpeed: 250)
print(car1.brand)
car1.startEngine()
car1.drive()

//Inits
var string = String.init() // ""
var integer = Int.init() // 0
var bool = Bool.init() // false

var string12 = String()
var integer1 = Int()
var bool1 = Bool()



struct NewPerson {
    var name : String
    
    func sayHello() {
        print("\(name) dice \"Hola mundo!\"")
    }
}
let persona = NewPerson(name: "Persona")

struct Temperature {
    var celsius : Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    
    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
    }
    
    init(kelvin: Double) {
        celsius = kelvin - 273.15
    }
}

let temperature = Temperature(celsius: 30.0)

let farh = 98.6
let celsiusValue = (farh - 32) / 1.8
print(celsiusValue)

let currentTemperature = Temperature(celsius: 20.5)
let valueTemperature = Temperature(fahrenheit: 212.0)
print(valueTemperature.celsius)

let kelvinTemp = Temperature(kelvin: 300)
print(kelvinTemp.celsius)

struct NewSize {
    var width : Double
    var height: Double
    
    func area() -> Double {
        return width * height
    }
}
let someSize = NewSize(width: 50, height: 60)
let area = someSize.area()
print(area)

struct Odometer {
    var count: Int = 0
    
    mutating func increment() {
        count += 1
    }
    
    mutating func increment(by amount: Int) {
        count += amount
    }
    
    mutating func reset() {
        count = 0
    }
}

var odomoter = Odometer()
odomoter.increment()
odomoter.increment()
print(odomoter.count)
odomoter.increment(by: 30)
print(odomoter.count)
odomoter.reset()
print(odomoter.count)



struct NewTemperature {
    var celsius : Double
    var fahrenheit : Double
    var kelvin : Double
    
    init(celsius: Double) {
        self.celsius = celsius
        fahrenheit = celsius * 1.8 + 32
        kelvin = celsius + 273.15
    }
    
    init(fahrenheit: Double) {
        self.fahrenheit = fahrenheit
        celsius = (fahrenheit - 32) / 1.8
        kelvin = celsius + 273.15
    }
    
    init(kelvin: Double) {
        self.kelvin = kelvin
        celsius = kelvin - 273.15
        fahrenheit = celsius * 1.8 + 32
    }
}

let newTemp = NewTemperature(celsius: 100)
print(newTemp.kelvin)

struct FixTemperature {
    var celsius : Double
    
    var fahrenheit : Double {
        return celsius * 1.8 + 32
    }
    
    var kelvin : Double {
        return celsius + 273.15
    }
}
let newT = FixTemperature(celsius: 100)
print(newT.fahrenheit)

struct StepCounter {
    var totalSteps : Int = 0 {
        willSet {
            print("A punto de setear totalSteps a \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Se agregó \(totalSteps - oldValue) pasos")
            }
        }
    }
}
var stepCounter = StepCounter()
stepCounter.totalSteps = 40
stepCounter.totalSteps = 100

struct Temp {
    static var boilingWater = 100
    
    static func convertTemp() {
        print("Convert")
    }
}

let boilingPoint = Temp.boilingWater
Temp.convertTemp()

var newSize = NewSize(width: 250, height: 230)
var anotherSize = newSize
newSize.width = 100
print(anotherSize.width)

//Classes

class AnotherPerson {
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("\(name) dice \"Hola mundo!\"")
    }
}
let anotherPerson = AnotherPerson(name: "Eduardo")
print(anotherPerson.name)
anotherPerson.sayHello()

class Vehicle {
    var currentSpeed = 0.0
    
    var description : String {
        return "Viajando a \(currentSpeed) millas por hora"
    }
    
    func makeNoise() {
        //Hacemos algo
    }
}
let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

class Bicycle: Vehicle {
    var hasBasket = false
}
let bicyle = Bicycle()
bicyle.hasBasket = true

bicyle.currentSpeed = 20
print("Bicycle: \(bicyle.description)")

class Train : Vehicle {
    override func makeNoise() {
        print("Shuu shuu!")
    }
}

//
//class ViewController : UIViewController {
//    override func viewDidLoad() {
//        
//    }
//}


class NewCar : Vehicle {
    var brand : String = "Honda"
    override var description: String {
        return super.description + " y es de marca \(self.brand)"
    }
}

let newCar = NewCar()
newCar.currentSpeed = 120
newCar.brand = "Toyota"
print("Car: \(newCar.description)")

var numbers = [-1, 4, 6, 2, 10, -45, 10.3]
if numbers.contains(6) {
    print("Si contiene el elemento 6")
}
var myArray : [Int] = []
var myArray1 : Array<Int> = []
var myArray2 = [Int]()
if myArray.isEmpty {
    print("Es vacio")
}
print(numbers[2])
numbers[1] = 5
print(numbers)

var names : [String] = ["Carlos", "David", "Jenny"]
names.append("Oscar")
names += ["Kenneth", "Mauro"]
print(names)
names.insert("Issac", at: 3)
names.remove(at: 4)
names.removeLast()
names.removeAll()

var array1 = [1,2,3]
var array2 = [4,5,6]
var newArray = [array1, array2]
let firstArray = newArray[0]
let firstElement = newArray[0][0]

//Dictionaries
var scores = ["Richard": 500, "Charles": 100, "Robert": 300]
//[String:Int]
let array = Array(scores)
print(array)

var myDictionary = [String:Int]()
var myDictionary1 = Dictionary<String, Int>()
var myDictionary2 : [String: Int] = [:]
print(scores)
scores["Richard"] = 400
print(scores)

let oldValue = scores.updateValue(450, forKey: "Richard")
print(scores)
let oldValue2 = scores.removeValue(forKey: "Robert")
print(scores)

let players = scores.keys
let points = scores.values

print(players)
print(points)

if let myScore = scores["Charles"] {
    
    print(myScore)
}
let myScore1 = scores["Ricardo"]
//{
//    print(myScore1)
//}

let persons = [Person(name: "A"), Person(name: "B")]
//persons





