import Cocoa

//var greeting = "Hello, playground"
//
//func test() {
//    print("hey")
//}

//// Number 1
//
//func getHeart() -> String {
//    "\u{2764}"
//}
//
//func getSmile() -> String {
//    "\u{1F970}"
//}
//
//func getLoveCat() -> String {
//    "\u{1F63B}"
//}
//
//print(getHeart() + getSmile() + getLoveCat())

//// Number 2
//
//func getCageColor(letter row: String, number column: Int) -> String? {
//    let numberRow: Int
//    switch row.lowercased() {
//    case "a":
//        numberRow = 1
//
//    case "b":
//        numberRow = 2
//
//    case "c":
//        numberRow = 3
//
//    case "d":
//        numberRow = 4
//
//    case "e":
//        numberRow = 5
//
//    case "f":
//        numberRow = 6
//
//    case "g":
//        numberRow = 7
//
//    case "h":
//        numberRow = 8
//
//    default:
//        return nil
//    }
//
//    return (numberRow + column) % 2 == 1 ? "white" : "black"
//}
//
//let cageColor = getCageColor(letter: "C", number: 5) ?? "Wrong cage"
//
//print(cageColor)

//// Number 3
//
//let array = [1, 2, 3, 4, 5, 6]
//
//func reversed(intArray array: [Int]) -> [Int] {
//    array.reversed()
//}
//
//func reversed(sequence array: Int...) -> [Int] {
//    reversed(intArray: array)
//}
//
//print("First function result: ", terminator: " ")
//print(reversed(intArray: array))
//print("Second function result: ", terminator: " ")
//print(reversed(sequence: 1, 2, 3, 4, 5))
//
//// Number 4
//
//var arrayTest = [1, 2, 3, 4, 5, 6]
//
//func reverse(intArray array: inout [Int]) {
//    array = reversed(intArray: array)
//}
//
//reverse(intArray: &arrayTest)
//print("Reversed array: ", terminator: " ")
//print(arrayTest)
//

// Number 5

func editString(string str: String) -> String {
    
    var resultString = ""
    
    let vowels: [Character] = ["a", "e", "i", "o", "u", "y"]
    let consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j",
                                 "k", "l", "m", "n", "p", "q", "r",
                                 "s", "t", "v", "w", "x", "y", "z"]
    
    let charToString: [Character : String] = ["1" : "One", "2" : "Two",
                                              "3" : "three", "4" : "four",
                                              "5" : "five", "6" : "six",
                                              "7" : "seven", "8" : "eight",
                                              "9" : "nine", "0" : "null"]
    
    for char in str.lowercased() {
        
        switch char {
        case _ where vowels.contains(char):
            resultString += char.uppercased()
            
        case _ where consonants.contains(char):
            resultString += char.lowercased()
            
        case "1"..."9":
            resultString += charToString[char]!
            
        case _ where "-.,[]'!?:;\"»«".contains(char):
            resultString += " "
            
        default:
            resultString += String(char)
        }
        
    }
    
    return resultString
    
}

let string = "Lorem ipsum d!olor sit amet, 12 consectetur adipiscing elit.\n"
            + "Etiam ne2c risus ne!!c arcu rhoncus lacinia.\n"
            + "Class aptent taciti sociosqu ad litora torqu.ent per conubia nostra, per inceptos himenaeos.\n"
            + "Donec eu fringilla tellus. Integer hendrerit pretium lorem, auctor aliquam sapien suscipit in.\n"
            + "Nunc vitae eu."

print(editString(string: string))
