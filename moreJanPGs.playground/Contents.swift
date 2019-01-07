import UIKit
import Foundation


//ternary operator

// if condtion is true, print, you may enter, else print no
// iCanDrink ? print ("Your may enter") : print("no")

var evenNumbers: [Int] = []
var oddNumbers: [Int] = []

var number:[Int] = []

for number in 1...50 {
    (number % 2 == 0) ? evenNumbers.append(number) : oddNumbers.append(number)
}

print(evenNumbers)

var basic = 10.0
print("\(basic * basic) has sqrt of \(sqrt(basic))")




let first = ["One", "Two"]
let second = ["Three", "Four"]
let third = first + second

var rando = "Heyyyyyyo"
for char in rando {
    print(char)
}


func greetings(to name: String) -> String {
    return "Hey, \(name)!"
}

//print("\(greetings(to: "Jason"))")
//
//print(greetings(to: "West"))
//
//var salaryPerYear = 67000
//
//var salaryPerWeek: Int {
//    get {
//        return salaryPerYear/52
//    }
//    set(newSalaryPerWeek) {
//        return salaryPerYear = newSalaryPerWeek*52
//    }
//}
//
//salaryPerWeek = 4000
//print(salaryPerYear)


// get set = when you update the computed value (get) of the struct or class outside of itself, then the set takes over and updates the other values accordingly

struct DopePrices {
    var eighth: Double
    var quarter: Double
    var half: Double
    var zip: Double {
        get {
            return half * 2 - 20
        }
        set {
            eighth = eighth / 2.0
            quarter = quarter / 2.0
            half = half / 2.0 + 10
        }
    }
}

var kush = DopePrices(eighth: 100, quarter: 200, half: 400)
kush.zip
kush.eighth
kush.half

kush.zip = 200
kush.eighth
kush.half













