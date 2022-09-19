class Human {
    var height: Int
    var weight: Int
    
    init(height: Int, weight: Int) {
        self.height = height
        self.weight = weight
    }
    
    convenience init(height: Int) {
        self.init(height: height, weight: 0)
    }
    
    convenience init(weight: Int) {
        self.init(height: 0, weight: weight)
    }
    
    convenience init() {
        self.init(weight: 0)
    }
}


class Student: Human {
    
    var firstName: String
    var secondName: String
    
    init(firstName: String, secondName: String) {
        self.firstName = firstName
        self.secondName = secondName
        super.init(height: 0, weight: 0)
    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, secondName: "Unnamed")
    }
}

class Doctor: Student {
    
    var fieldOfStudy: String
    
    init(fieldOfStudy: String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Kek", secondName: "Lul")
    }
    
    override init(firstName: String, secondName: String) {
        self.fieldOfStudy = "Doctor"
        super.init(firstName: firstName, secondName: secondName)
    }
    
    
    
    
}


var doc = Doctor(firstName: "Kek")
doc.firstName
doc.secondName

