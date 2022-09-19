import UIKit

class SomeClass {
    
    var firstName = "Eugene"
    var secondName = "Borisov"
    
    var fullname: String {
        get {
            return firstName + secondName
        }
        
        set {
            firstName + newValue
        }
    }
    
}

var a = SomeClass()

a.firstName
a.fullname = "Alex"
a.firstName
