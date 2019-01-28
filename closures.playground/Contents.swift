import UIKit

var addClosures = { (number1: Int, number2: Int) in
    return number1 + number2
}

addClosures(1, 500)

var addClosures$: (Int, Int, Int) -> Int = { $0 + $1 + $2 }
addClosures$(5, 10, 20)
addClosures$(100,200,300)

