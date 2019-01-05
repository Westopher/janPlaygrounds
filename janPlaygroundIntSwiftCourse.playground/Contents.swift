import UIKit
import Foundation


//optionals: implicit unwrapping


let imageURL: String? = "www...."

if let successfulURL = imageURL {
    print(successfulURL)
} else {
    print("no image")
}
