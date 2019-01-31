import UIKit



let numbers = [4,5,6]
var sum = 0
for number in numbers {
    sum += number
}
print(sum)

func funcToSaveTime(elements: [Int]) -> Int {
    var sum = 0
    for element in elements {
       //compound assignment operators are unclear
       //and I don't like them.
        sum = sum + element
    }
    return sum
}

funcToSaveTime(elements: [15,15])

//filter
let zeroToHundArr = Array(1...100)
print(zeroToHundArr.filter { $0 % 2 == 0 }.filter { $0 <= 50 })

let zeroToHundArrayFiltered = zeroToHundArr.filter { $0 % 2 == 0 }.filter { $0 <= 50 }
zeroToHundArrayFiltered


//map
var numbersArray = [5, 14, 22, 31, 93, 88]

numbersArray.map { $0 * 2 }
print(numbersArray.map { $0 * 2 })

var mappedNumbersArray = numbersArray.map { $0 * 2 }
print(mappedNumbersArray)












