import UIKit



enum HeightError: Error {
    case maxHeight
    case minHeight
}

func checkHeightError(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    } else if height < 140 {
        throw HeightError.minHeight
    } else {
        print("enjoy")
    }
}

do {
    try checkHeightError(height: 145)
}   catch HeightError.maxHeight {
    print("too tall")
}   catch HeightError.minHeight {
    print("too short")
}

