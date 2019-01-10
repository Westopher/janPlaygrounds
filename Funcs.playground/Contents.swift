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
