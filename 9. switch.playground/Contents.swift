import Cocoa

//var greeting = "Hello, playground"
//
//var pol = "Male"
//
//switch pol {
//case let a where a == "Male":
//    print("hey")
//
//default: break
//
//}

// Number 1

var string = "Lorem ipsum dolor sit amet, con55sectetur adipisci55ng elit. Etiam nec ris55us nec arcu rhoncus lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec eu fringilla tellus. Integer hendrerit pretium l55orem, auctor aliquam sapien suscipit in. N55unc vitae eu."

let vowels: [Character] = ["a", "e", "i", "o", "u", "y"]
let consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j",
                             "k", "l", "m", "n", "p", "q", "r",
                             "s", "t", "v", "w", "x", "y", "z"]

var dict = [String : Int]()

for char in string.lowercased() {

    switch char {
    case let a where vowels.contains(a):
        dict["Vowels"] = (dict["Vowels"] ?? 0) + 1

    case let a where consonants.contains(a):
        dict["Consonants"] = (dict["Consonants"] ?? 0) + 1

    case "0"..."9":
        dict["Numbers"] = (dict["Numbers"] ?? 0) + 1

    case " ":
        dict["Spaces"] = (dict["Spaces"] ?? 0) + 1

    default:
        dict["Symbols"] = (dict["Symbols"] ?? 0) + 1
    }

}

for (name, count) in dict {
    print("Count of \(name): \(count)")
}

// Number 2

var age = 22

switch age {
case 1...2:
    print("Infancy")

case 2...4:
    print("Toddler")

case 5...7:
    print("Early school age")

case 8...12:
    print("Middle school age")

case 13...17:
    print("Early adolescence")

case 18...25:
    print("Later adolescence")

case 25...30:
    print("Early adulthood")

case 30...50:
    print("Middle adulthood")

default:
    print("Later adulthood")
}

// Number 3

let student = (name: "Авгений", secondName: "Борисов", patronymic: "Константинович")

switch student {
case let (name, _, _) where name.hasPrefix("А") || name.hasPrefix("О"):
    print("Hello \(name)")

case let (name, _, patronymic) where patronymic.hasPrefix("В") || patronymic.hasPrefix("Д"):
    print("Hello \(name) \(patronymic)")

case let (_, secondName, _) where secondName.hasPrefix("В") || secondName.hasPrefix("Д"):
    print("Hello \(secondName)")
    
default:
    print("Hello " + student.name + " " + student.secondName + " " + student.patronymic)
    
}

// Number 4


