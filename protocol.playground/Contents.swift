import UIKit


protocol Humanable {
    var name: String {get set}
    var race: String {get set}
    func sayHi()
}

struct Korean: Humanable {
    var name: String = "Bob Lee"
    var race: String = "Asian"
    func sayHi() {
        print("Hi there, I'm \(name)")
    }
}

struct American: Humanable {
    var name: String = "West K"
    var race: String = "White"
    func sayHi() {
        print("Hi there, I'm \(name)")
    }
}








