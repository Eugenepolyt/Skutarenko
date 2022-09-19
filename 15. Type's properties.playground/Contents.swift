import Cocoa
import Darwin

var greeting = "Hello, playground"
// Number 1
struct FileDescription {
    
    static var maxFileSizeInGb = 5
    
    var filePath: String
    
    lazy var pathArray = filePath.split(separator: "/")
    
    // When a lazy property is accessed, the structure changes, so you need to use mutating on the getter
    
    var fileName: String {
        mutating get {
            if pathArray.count <= 1 {
                return "Incorrect file path"
            }
            
            return String(pathArray.last!)
        }
    }
    
    var directoryPath: String {
        mutating get {
            if pathArray.count <= 1 {
                return "Incorrect file path"
            }
            
            return "/" + pathArray.dropLast().joined(separator: "/")
        }
    }
    
    enum FileType {
        case hidden, open
    }
    
    var fileType: FileType
    
    var contentFile: String
    
}


var file = FileDescription(filePath: "/Users/evgenijborisov/Downloads/report.pdf", fileType: FileDescription.FileType.open, contentFile: "ABCD")

file.filePath

file.fileName

file.directoryPath

file.fileType

FileDescription.maxFileSizeInGb

file.contentFile


// Number 2

enum Colors: Int {
    
    static var countOfColors = 3
    static var initialColor = Colors.red.rawValue
    static var finalColor = Colors.yellow.rawValue
    
    case red = 0xFF0000
    case blue = 0x0000FF
    case yellow = 0xFFFF00
}


// Number 3

class Person {
    
    struct PersonLimits {
        var max: Int
        var min: Int
    }

    static var heightLimit = PersonLimits(max: 300, min: 25)
    static var weightLimit = PersonLimits(max: 400, min: 5)
    static var ageLimit = PersonLimits(max: 150, min: 0)
    static var nameLenLimit = PersonLimits(max: 50, min: 1)
    static var countOfPersons = 0
    
    func checkLimit(value: Int, limit: PersonLimits) -> Bool {
        value > limit.max || value < limit.min
    }

    var firstName: String {
        didSet {
            if checkLimit(value: firstName.count, limit: Person.nameLenLimit) {
                firstName = oldValue
            }
        }
    }
    
    var secondName: String {
        didSet {
            if checkLimit(value: secondName.count, limit: Person.nameLenLimit) {
                secondName = oldValue
            }
        }
    }
    
    var age: Int {
        didSet {
            if checkLimit(value: age, limit: Person.ageLimit) {
                age = oldValue
            }
        }
    }
    
    var weight: Int {
        didSet {
            if checkLimit(value: weight, limit: Person.weightLimit) {
                weight = oldValue
            }
        }
    }
    
    var height: Int {
        didSet {
            if checkLimit(value: height, limit: Person.heightLimit) {
                height = oldValue
            }
        }
    }
    
    init(firstName: String, secondName: String, age: Int, weight: Int, height: Int) {
        self.firstName = firstName
        self.secondName = secondName
        self.age = age
        self.weight = weight
        self.height = height
        Person.countOfPersons += 1
    }

}

let person = Person(firstName: "Eugene", secondName: "Borisov", age: 20, weight: 65, height: 178)

(person.firstName, person.secondName, person.age, person.weight, person.height)

person.firstName = ""
person.secondName = "124sdfasdfasfasfawefweafaewfafwefewfwefwefwafwefwaefwaefwafewafwfwafwafwfwafwefwaf"
person.age = -1
person.age = 160
person.weight = 600
person.height = 400

(person.firstName, person.secondName, person.age, person.weight, person.height)
