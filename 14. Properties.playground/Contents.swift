import Cocoa

// Number 2

struct Student {
    
    struct DayOfBirth {
        let day: Int
        let month: Int
        let year: Int
    }
    
    var firstName: String  {
        didSet {
            firstName = firstName.prefix(1).uppercased() + firstName.dropFirst().lowercased()
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.prefix(1).uppercased() + lastName.dropFirst().lowercased()
        }
    }
    
    var fullName: String {
        get {
            firstName + " " + lastName
        }
        
        set {
            let split = newValue.split(separator: " ")
            
            if split.count > 0 {
                firstName = String(split[0])
            }
            
            if split.count > 1 {
                lastName = String(split[1])
            }
        }
    }
    
    let dayOfBirth = DayOfBirth(day: 30, month: 11, year: 2001)
    
    var getAge: Int {
        let currentDate = Date()
        
        let userCalendar = Calendar.current
        
        var dateComponents = DateComponents()
        dateComponents.year = dayOfBirth.year
        dateComponents.month = dayOfBirth.month
        dateComponents.day = dayOfBirth.day
        
        let dateDOB = userCalendar.date(from: dateComponents) ?? Date()
        
        let neededComponents: Set<Calendar.Component> = [
            .year,
            .month,
            .day
        ]
        
        let difference = userCalendar.dateComponents(neededComponents, from: dateDOB, to: currentDate)
        
        return difference.year!
    }
}

var student = Student(firstName: "Something", lastName: "Kek")

student.getAge

// Number 4

struct Segment {
    
    struct Point {
        var x: Double
        var y: Double
    }
    
    var a: Point
    var b: Point
    
    var midPoint: Point {
        get {
            let cX = Double(a.x + b.x) / 2
            let cY = Double(a.y + b.y) / 2
            
            return Point(x: cX, y: cY)
        }
        
        set {
            
            let biasX = newValue.x - midPoint.x
            let biasY = newValue.y - midPoint.y
            
            a = Point(x: a.x + biasX, y: a.y + biasY)
            b = Point(x: b.x + biasX, y: b.y + biasY)

        }
        
    }
    
    var distance: Double {
        get {
            let powX = pow(b.x - a.x, 2)
            let powY = pow(b.y - a.y, 2)
            
            return sqrt(powX + powY)
        }
        
        set {
            let cos = (b.x - a.x) / distance
            let sin = (b.y - a.y) / distance
            b.x = a.x + newValue * cos
            b.y = a.y + newValue * sin
        }
    }
    
}

var segment = Segment(a: Segment.Point(x: 1, y: 2), b: Segment.Point(x: 2, y: 3))

segment.midPoint.x
segment.midPoint.y
segment.distance

segment.midPoint = Segment.Point(x: 2, y: 2)
segment.distance
(segment.a.x, segment.a.y)
(segment.b.x, segment.b.y)

segment.distance = 1
(segment.a.x, segment.a.y)
(segment.b.x, segment.b.y)




