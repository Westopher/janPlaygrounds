import UIKit

struct Customer : Decodable {
    
    var firstName :String
    var lastName :String
    var age :Int
}

let json = """

{
    "firstNae" : "John",
    "lastName" : "Doe",
    "age" : 34
}

""".data(using: .utf8)!

let customer = try? JSONDecoder().decode(Customer.self, from: json)
if let customer = customer {
print(customer)
} else {
    print("no json data")
}
