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








