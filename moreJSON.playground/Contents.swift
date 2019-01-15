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

//generics examples
let highSchoolGPA = [2.8, 3.0, 3.5, 3.8]
let favoritePeople = ["Michael Jordan", "Lebron James", "Patrick Ewing", "Shaq", "Kobe"]
let favoriteNumbers = [3, 5, 6, 7, 186]

//so, you don't know what kind of array it's going to be. It could be double, string, or set
func printElement<Generic>(array: [Generic]) {
    for i in array {
        print(i)
    }
}

printElement(array: favoritePeople)






