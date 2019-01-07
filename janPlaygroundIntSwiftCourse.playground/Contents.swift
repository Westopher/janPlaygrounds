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
ChicagoApartment.resident?.sayHello()

let sanFranApt = Apartment()
sanFranApt.resident = Human(name: "Full House")
sanFranApt.resident?.sayHello()

if let residentName = ChicagoApartment.resident?.name {
    print(residentName)
    } else {
    print("No name available")
    }

func checkResident() {
    guard let residentName = sanFranApt.resident?.name else {
        print("No name available")
        return
    }
    print(residentName)
    
}
checkResident()




let iCanDrink = true

func checkDrinkingAges() {

    //if the condition is false, it is handled here. So you're "guarding" against the false. So if this value comes up as a nil or you don't get a value back from an API, you run code to handle that in the print line below. Then you exit the function. After that, you run code if you get something back.
    guard iCanDrink else {
        print("You can't drink")
        return
    }
    //it the condition is true, it is handled here
    print("Enjoy your night")
}

checkDrinkingAges()
