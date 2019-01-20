import UIKit
import PlaygroundSupport

struct User: Decodable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
}

struct Address: Decodable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}

struct Geo: Decodable {
    let lat: String
    let lng: String
}



let url = URL(string: "https://jsonplaceholder.typicode.com/users")

URLSession.shared.dataTask(with: url!) { data, response, error in
    
    guard error == nil,
    let data = data else {
        print(error)
        return
    }
    
    let users = try? JSONDecoder().decode([User].self, from: data)
    if let users = users {
        print(users[0].email)
        print(users[0].address)
        print(users[0].address.geo.lat)
    }
    
    
    
}.resume()


PlaygroundPage.current.needsIndefiniteExecution = true
