import UIKit


/////decoding
//struct Customer : Decodable {
//
//    var firstName :String
//    var lastName :String
//    var age :Int
//}
//
//let json = """
//
//{
//    "firstNae" : "John",
//    "lastName" : "Doe",
//    "age" : 34
//}
//
//""".data(using: .utf8)!
//
//let customer = try? JSONDecoder().decode(Customer.self, from: json)
//if let customer = customer {
//print(customer)
//} else {
//    print("no json data")
//}

//encoding


struct Customer : Codable {
    
    var myName :String
    var mylastName :String
    var myAge :Int
}

let customer = Customer(myName: "West", mylastName: "Kraemer", myAge: 33)
let encodedCustomerJSON = try! JSONEncoder().encode(customer)

print(encodedCustomerJSON)

print(String(data: encodedCustomerJSON, encoding: .utf8)!)
