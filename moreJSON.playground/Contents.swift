import UIKit


func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let z = a
    a = b
    b = z
}


var someInt = "hello"
var anotherInt = "world"
swapTwoValues(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")













