import UIKit
import Foundation

func sayMyName(_ name: String) {
    print("\(name) is the name. Coding is my game.")
}

sayMyName("West")


let poundsOfCookies = 10
let priceofCookies = 25

func calcOrderPrice(pounds: Int, price: Int) -> Int {
    let totalCost = pounds * price
    return totalCost
}

let totalCost = calcOrderPrice(pounds: poundsOfCookies, price: priceofCookies)

print("The total cost is \(totalCost)")


func lowerCase(name: String?) -> String {
    guard let name = name else {
        return "joe blow"
    }
    let lowerCasedName = name.lowercased()
    return lowerCasedName
}

print(lowerCase(name: "West"))


struct Dopeboy {
    //only accessable by dopeboy, not by instences of the struct
    static func lifeStatement() {
        print("Ball out!")
    }
    
    let govtName: String
    var streetName: String
    var gramsOnHand: Int
    var priceofGram: Int
    
    var maxEarnings: Int {
        return gramsOnHand * priceofGram
    }
    
    func solicit() {
        print("My name is \(streetName), would you like to buy something?")
    }
    
    mutating func sell(grams: Int) {
        guard gramsOnHand >= grams else {
            print("I don't have \(grams) grams on hand, so the deal can not go through.")
            return
        }
        gramsOnHand = gramsOnHand - grams
        print("I have successfully sold \(grams) and now I have \(gramsOnHand) grams left.")
    }
}

var Me = Dopeboy(govtName: "West", streetName: "Kanye", gramsOnHand: 100, priceofGram: 10)
Me.govtName
Me.solicit()
Me.maxEarnings

Me.sell(grams: 60)
Me.gramsOnHand

Dopeboy.lifeStatement()

//Static properties are not accessable to an instance of the type, just the class or struct itself.
struct BabyCreditCard {
    static let maxCharge = 200
    
    func buyShitThatCosts(_ price: Int) {
        guard price < BabyCreditCard.maxCharge else {
            print("Denied. Over the limit.")
            return
        }
        print("Approved. Successful purchase.")
    }
}

let babyVisa = BabyCreditCard()
babyVisa.buyShitThatCosts(1_000)

struct Equation {
    let firstNumber: Int
    let secondNumber: Int
    func add() {
        print(self.firstNumber + self.secondNumber)
    }
}

var newEquation = Equation(firstNumber: 60, secondNumber: 40)
newEquation.add()


//Struct vs Class (you've got to initialize a class)
struct PersonStruct {
    let name: String
}

let Westopher = PersonStruct(name: "West")
print(Westopher.name)


class PersonClass {
    let name: String
    init(name: String) {
        self.name = name
    }
}

let thisIsMe = PersonClass(name: "Vestur")
print(thisIsMe.name)



class Hustla {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var Kanye1 = Hustla(name: "Kanye")
var Kanye2 = Kanye1
Kanye1.name
Kanye2.name

//both change
Kanye2.name = "Yeezy"
Kanye2.name
Kanye1.name

struct SoccerTeam {
    var name: String
}

var ManchesterUnited = SoccerTeam(name: "Manchester United")
var Liverpool = ManchesterUnited
ManchesterUnited.name
Liverpool.name

ManchesterUnited.name = "ManU"
ManchesterUnited.name
Liverpool.name


class Person {
    let govtName: String
    
    init(govtName: String) {
        self.govtName = govtName
    }
    
    func introSelf() {
        print("Hi, I'm \(govtName)")
    }
}

class Hustler: Person {
    let bank: Int
    init(govtName: String, bank: Int) {
        self.bank = bank
        super.init(govtName: govtName)
    }
    func hustlin() {
        print("Everyday \(govtName) is hustlin. Also, I have \(bank) dollars on me.")
    }
}

let Sky = Hustler(govtName: "Sky", bank: 100)
Sky.govtName
Sky.introSelf()
Sky.hustlin()

let Skyler = Person(govtName: "Skyler")
Skyler.introSelf()






