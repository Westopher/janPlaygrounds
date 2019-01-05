import UIKit
import Foundation


//optionals: implicit unwrapping (optional binding)


let imageURL: String? = "www...."

if let successfulURL = imageURL {
    print(successfulURL)
} else {
    print("no image")
}

class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, I'm \(name).")
    }
}

var West = Human(name: "West")
West.sayHello()

class Apartment {
    var resident: Human? = nil
}

//Initialize
var NYCApartment = Apartment()
NYCApartment.resident = Human(name: "Westopher")


NYCApartment.resident?.sayHello()
let name = NYCApartment.resident?.name

let ChicagoApartment = Apartment()
ChicagoApartment.resident?.name
ChicagoApartment.resident = Human(name: "Lip")

if let residentName = ChicagoApartment.resident?.name {
    print(residentName)
    } else {
    print("No name available")
    }

