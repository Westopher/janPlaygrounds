import UIKit
import PlaygroundSupport

struct Users {
    let id: Int
    let username: String
    let email: String
    let address: Address
}

struct Address {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}

struct Geo {
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
    
    print(data)
    
}.resume()


PlaygroundPage.current.needsIndefiniteExecution = true
