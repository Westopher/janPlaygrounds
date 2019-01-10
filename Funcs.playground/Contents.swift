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
    let govtName: String
    var streetName: String
    var isHustlin: Bool
    
    init(govtName: String, streetName: String) {
        self.govtName = govtName
        self.streetName = streetName
        self.isHustlin = true
    }
    
    func solicit() {
        print("My name is \(streetName), would you like to buy something?")
    }
}

let Me = Dopeboy(govtName: "West", streetName: "Kanye")
Me.govtName
Me.solicit()
Me.isHustlin






