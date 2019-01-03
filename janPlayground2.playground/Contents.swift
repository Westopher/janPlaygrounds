import UIKit
import Foundation
//
//
//////find the last digit of a number
////func lastDigit(_ number: Int) -> Int {
////    return number % 10
////}
////
////lastDigit(5235433634)
////
////
////func first(_ N: Int) -> [Int] {
////    var numbers:[Int] = []
////    for number in 1...N {
////        numbers.append(number)
////    }
////    return numbers
////}
////
////var listOfNumbers = [1, 2, 3, 10, 100]
////
////var sum = 0
////
////for i in listOfNumbers {
////    sum += i
////}
////
////print(sum)
//
////var listOfNumbers2 = [1, 2, 3, 10, 100, 51, 84, 79]
////
////var i = 1
////
////while i < listOfNumbers2.count {
////    print(listOfNumbers2[i])
////    i += 2
////}
//
//
//var listOfNumbers3 = [1, 2, 3, 10, 100, 2, 105, 67, 25, 11, 200]
//listOfNumbers3.count
//
//for i in 1...listOfNumbers3.count {
//    print(listOfNumbers3[listOfNumbers3.count - i])
//}


func countDown(N: Int) {
    var i = N
    
    while i > 0 {
        print(i)
        sleep(1)
        i -= 2
    }
    
    print("go!")
}

countDown(N: 10)



var sumClosure: (Int, Int) -> Int = { x, y in return x + y }
