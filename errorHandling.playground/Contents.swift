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


var myGrade: Int = 80 {
    willSet(newGrade) {
        print("change to \(newGrade)")
    }
    didSet(oldGrade) {
        print("Your old grade was \(oldGrade), your new grade is \(myGrade)")
    }
}

myGrade = 100

var totalSteps: Int = 20 {
    willSet(newTotalSteps) {
        print("about to set total steps to \(newTotalSteps)")
    }
    didSet(oldTotalSteps) {
        if totalSteps > oldTotalSteps {
            print("added \(totalSteps - oldTotalSteps) steps")
        }
    }
}

totalSteps = 19
totalSteps


var isUserLoggedIn: Bool = false {
    willSet(newValue) {
        print("the user has done something")
    }
    didSet {
        if isUserLoggedIn == true {
            print("the user has switched from \(oldValue) to \(isUserLoggedIn)")
        }
    }
}

isUserLoggedIn = true
isUserLoggedIn = false
isUserLoggedIn = false
isUserLoggedIn = true









