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
kush.quarter


let bank = 50

let howImFeelin = bank > 1000 ? "like a baws" : "kinda broke"

//updating an array

var atl = ["Future", "Tip", "Gucci", "Migos"]

atl += ["Outcast", "Killer Mike"]


func updateArray() {
if let indexofGucc = atl.index(of: "Gucci") {
   atl[indexofGucc] = "Guwop"
} else {
    print("no Gucci in array")
}
}


updateArray()

print(atl)

var cash = 1.0
var daysInTheGame = 0

while cash < 1_000_000 {
    cash += cash
    daysInTheGame += 1
    print("\(daysInTheGame) days & $ \(cash)")
    
    if daysInTheGame == 7 {
        print("You got locked up after -\(daysInTheGame)- days in the game")
        break
    }
}


let favorites = ["Kristy", "Eva", "Alies", "Corinna", "Maria", "Mistral"]

for (index, lady) in favorites.enumerated() {
    print("\(index + 1). \(lady)")
}


//let lottaNumbers = 1.0...10000.0
//
//for number in lottaNumbers where number % 3.14 == 0 {
//    print(number)
//}

let caller = "Joan"

switch caller {
case "Bruce":
    print("pick up Dad")
case "Joan":
    print("pick up Mom")
case "Sky":
    print("pick up Sky")
case "Kate":
    print("pick up Kate")
default:
    print("pick up if not busy")
}

//switch through range
let time = 12

switch time {
case 1...7:
    print("ealy morning")
case 8...16:
    print("daytime")
case 17...21:
    print("night")
default:
    print("late")
}

var cellNumber: Int? = 5556667777
if let newCellNum = cellNumber {
    print("it's there")
} else {
    print("it's NOT there")
}


enum FuckinError: Error {
    case fuckShit
}

//let fortyString = "400"
//let fortyIntOptional = Int(fortyString)
//
//guard let fortyInt = fortyIntOptional else {
//    print("The Int optional was nil")
//    throw FuckinError.fuckShit
//}
//
//print(fortyInt)

//WITH GUARD LET YOU CAN USE THE VAIABLE THAT YOU CREATE AND UNWRAP ANYWHERE IN YOUR CODE. WITH IF THEN YOU CAN ONLY USE IT WITHIN THAT BLOCK.
let dictionary = ["Awesome":"David Bowie"]
let rip = dictionary["Awesome"]

let goat = dictionary["Spam"] ?? "Freddie Mercury"

//guard let missYou = rip else {
//    print("David Bowie is not here")
//    throw FuckinError.fuckShit
//}
//
//print(missYou)


let gangsterName: String? = nil
let name = gangsterName ?? "Clarence"
print(name)


