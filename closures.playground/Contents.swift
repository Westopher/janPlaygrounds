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
        $0 + $1
    }
}
let closure = returnClosureInFunction()
closure(10,10)

let ex = Array(1...100).filter { $0 % 2 == 0 }
print(ex)


//completion handlers

let firstVC = UIViewController()
let nextVC = UIViewController()

firstVC.present(nextVC, animated: true, completion: { print("done") } )












