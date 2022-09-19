import Cocoa


//// Number 1
//
//func printClosure(closure: () -> Void) {
//    for i in 1...10 {
//        print(i)
//    }
//
//    closure()
//}
//
//printClosure {
//    print("Its clocure")
//}

//// Number 2
//
//let array = [1, 3, 2, 5, 66, 22]
//
//let sortedArray = array.sorted(by: >)
//let sortedArray2 = array.sorted(by: <)

//// Number 3
//
//let array = [1, 2, 3, 4, 5, 0, 44, 2]
//
//func minMaxArray(array: [Int], closure: (Int?, Int) -> Bool ) -> Int {
//
//    var current: Int?
//
//    for i in array {
//        if closure(current, i) {
//            current = i
//        }
//    }
//
//    return current ?? 0
//}
//
//let max = minMaxArray(array: array) {
//    $0 ?? Int.min < $1
//}
//
//let min = minMaxArray(array: array) {
//    $0 ?? Int.max > $1
//}

// Number 4


func minMaxCharacter(inString string: String, closure: (String?, String) -> Bool) -> Character {

    var current: String?

    for char in string {
        if closure(current, String(char)) {
            current = String(char)
        }
    }

    return Character(current ?? " ")

}

let string = "123456"

let max = minMaxCharacter(inString: string) {
    $0 == nil || UnicodeScalar($0!)!.value < UnicodeScalar($1)!.value
}

let min = minMaxCharacter(inString: string) {
    $0 == nil || UnicodeScalar($0!)!.value > UnicodeScalar($1)!.value
}

//
//// Number 5
//
//let array = Array("bOsdfsdfNFaEJKANaFKfuAAac1die2w.!")
//
//func toSort(char: Character) -> Int {
//
//    let vowels: [String] = ["a", "e", "i", "o", "u", "y"]
//    let consonants: [String] = ["b", "c", "d", "f", "g", "h", "j",
//                                 "k", "l", "m", "n", "p", "q", "r",
//                                 "s", "t", "v", "w", "x", "y", "z"]
//
//    switch char.lowercased() {
//    case let a where vowels.contains(a):
//        return 3
//    case let a where consonants.contains(a):
//        return 2
//    case "0"..."9":
//        return 1
//    default:
//        return 0
//    }
//}
//
//let arr = [2, 3, 1].sorted {
//    $0 > $1
//}
//
//let sortedArray = array.sorted { first, second in
//    let firstNumber = toSort(char: first)
//    let secondNumber = toSort(char: second)
//
//    if firstNumber > secondNumber {
//        return true
//    } else if firstNumber < secondNumber {
//        return false
//    } else {
//        return first.lowercased() < second.lowercased()
//    }
//}
//
//sortedArray
