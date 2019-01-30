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


let zeroToHundArr = Array(1...100)
print(zeroToHundArr.filter { $0 % 2 == 0 }.filter { $0 <= 50 })
















