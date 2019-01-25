import UIKit
import Foundation



enum HeightError: Error {
    case maxHeight
    case minHeight
}

func checkHeightError(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    } else if height < 140 {
        throw HeightError.minHeight
    } else {
        print("enjoy")
    }
}

do {
    try checkHeightError(height: 145)
}   catch HeightError.maxHeight {
    print("too tall")
}   catch HeightError.minHeight {
    print("too short")
}

// get + set

//var radius: Double = 10
//
//var diameter: Double {
//    get {
//        return radius * 2
//    }
//    set {
//        radius = newValue / 2
//    }
//}
//
//diameter = 50

//var side: Double = 100
//
//var area: Double {
//    get {
//        return side * side
//    }
//    set {
//        side = sqrt(newValue)
//    }
//}
//
//side = 9

struct fruitPrices {
    var apple: Double
    var orange: Double
    var peach: Double
    var banana: Double {
        get {
            return peach * 2
        }
        set {
            apple = newValue + 1
            orange = newValue + 2
            peach = newValue + 3
        }
    }
}

var fruit = fruitPrices(apple: 10, orange: 20, peach: 50)

fruit.apple
fruit.orange
fruit.peach
fruit.banana

fruit.banana = 100
fruit.orange
fruit.banana
