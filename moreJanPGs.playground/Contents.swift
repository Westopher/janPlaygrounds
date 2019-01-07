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




























