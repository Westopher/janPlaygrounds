import UIKit
import Foundation


//find the last digit of a number
func lastDigit(_ number: Int) -> Int {
    return number % 10
}

lastDigit(5235433634)


func first(_ N: Int) -> [Int] {
    var numbers:[Int] = []
    for number in 1...N {
        numbers.append(number)
    }
    return numbers
}

var listOfNumbers = [1, 2, 3, 10, 100]

var sum = 0

for i in listOfNumbers {
    sum += i
}

print(sum)




