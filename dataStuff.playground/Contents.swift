import UIKit

////
/////////decoding
//////struct Customer : Decodable {
//////
//////    var firstName :String
//////    var lastName :String
//////    var age :Int
//////}
//////
//////let json = """
//////
//////{
//////    "firstNae" : "John",
//////    "lastName" : "Doe",
//////    "age" : 34
//////}
//////
//////""".data(using: .utf8)!
//////
//////let customer = try? JSONDecoder().decode(Customer.self, from: json)
//////if let customer = customer {
//////print(customer)
//////} else {
//////    print("no json data")
//////}
////
//////encoding
////
////
////struct Customer : Codable {
////
////    var myName :String
////    var mylastName :String
////    var myAge :Int
////}
////
////let customer = Customer(myName: "West", mylastName: "Kraemer", myAge: 33)
////let encodedCustomerJSON = try! JSONEncoder().encode(customer)
////
////print(encodedCustomerJSON)
////
////print(String(data: encodedCustomerJSON, encoding: .utf8)!)
////
////
//////getting array data
////
////struct Place: Decodable {
////    var name: String
////    var latitude: Double
////    var longitude: Double
////    var visited: Bool
////}
////
////let json = """
////
////[
////{
////"name" : "Costa Rica",
////"latitude" : 23.45,
////"longitude" : 45.23,
////"visited" : true
////},
////{
////"name" : "Puerto Rico",
////"latitude" : 23,
////"longitude" : 45,
////"visited" : true
////},
////{
////"name" : "Mexico City",
////"latitude" : 23,
////"longitude" : 45,
////"visited" : true
////},
////{
////"name" : "Iceland",
////"latitude" : 23,
////"longitude" : 45,
////"visited" : false
////}
////]
////
////""".data(using: .utf8)!
////
////let places = try! JSONDecoder().decode([Place].self, from: json)
////print(places[3].name)
//
////decoding a dictionary with a string as key and an array as value
//
//struct ModelName: Decodable {
//    var name: String
//    var latitude: Double
//    var longitude: Double
//}
//
//let jsonData = """
//
//{
//     "places":[
//            {
//                "name" : "Costa Rica",
//                "latitude" : 34.56,
//                "longitude" : 65.67
//            },
//            {
//                "name" : "Boston",
//                "latitude" : 134.56,
//                "longitude" : 265.67
//            }
//            ]
//}
//
//
//""".data(using: .utf8)!
//
//let placesDictionary = try! JSONDecoder().decode([String:[ModelName]].self, from: jsonData)
//let placesJSON = placesDictionary["places"]
//print(placesJSON)
//

//nested types

enum AddressType : String, Decodable {
    case apartment = "apartment"
    case house = "house"
    case condo = "condo"
    case townHouse = "townHouse"
}

struct Geo: Decodable {
    var latitude: Double
    var longitude: Double
}

struct Address: Decodable {
    var street: String
    var city: String
    var state: String
    var geo: Geo
    var AddressType: AddressType
    
}

struct Customer: Decodable {
    var firstName: String
    var lastName: String
    var address: Address
}

struct CustomerResponse: Decodable {
    var customers: [Customer]
}


let jsonInfo = """

{
    "customers":[
        {
            "firstName" : "John",
            "lastName" : "Doe",
            "address" : {
                "street" : "1200 Richmond Ave",
                "city" : "Houston",
                "state" : "TX",
                "geo" : {
                    "latitude" : 34.56,
                    "longitude" : 35.65
                },
                "addressType" : "house"
            }
        }
    
    ]

}

""".data(using: .utf8)!

let customerResponseJSON = try! JSONDecoder().decode(CustomerResponse.self, from: jsonInfo)
print(customerResponseJSON.customers[0].address.geo.latitude)
