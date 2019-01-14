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


//getting array data

struct Place: Decodable {
    var name: String
    var latitude: Double
    var longitude: Double
    var visited: Bool
}

let json = """

[
{
"name" : "Costa Rica",
"latitude" : 23.45,
"longitude" : 45.23,
"visited" : true
},
{
"name" : "Puerto Rico",
"latitude" : 23,
"longitude" : 45,
"visited" : true
},
{
"name" : "Mexico City",
"latitude" : 23,
"longitude" : 45,
"visited" : true
},
{
"name" : "Iceland",
"latitude" : 23,
"longitude" : 45,
"visited" : false
}
]

""".data(using: .utf8)!

let places = try! JSONDecoder().decode([Place].self, from: json)
print(places[3].name)
