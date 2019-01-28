import UIKit

var addClosures = { (number1: Int, number2: Int) in
    return number1 + number2
}

addClosures(1, 500)

var addClosures$: (Int, Int, Int) -> Int = { $0 + $1 + $2 }
addClosures$(5, 10, 20)
addClosures$(100,200,300)

var returnString: () -> String = { () in
    "I am a string"
}
returnString
func returnClosure() -> ((Int, Int) -> Int) {
   return addClosures
}
 let returnedClosure = returnClosure()
returnedClosure(10,10)

//return a closure within a function

func returnClosureInFunction() -> ((Int, Int) -> Int) {
    return {
        (number1, number2) in number1 + number2
    }
}
let closure = returnClosureInFunction()
closure(10,10)
