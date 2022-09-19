import Cocoa

//class Artist {
//
//    var firstName: String
//    var secondName: String
//
//    init(firstName: String, secondName: String) {
//        self.firstName = firstName
//        self.secondName = secondName
//    }
//
//    func perfomance() {
//        print("This is perfomance of artist \(firstName) \(secondName): ")
//    }
//
//}
//
//
//class Painter: Artist {
//
//    override var firstName: String {
//        get {
//            return "Picasso"
//        }
//
//        set {
//            self.firstName = "Picasso"
//        }
//    }
//
//    override var secondName: String {
//        get {
//            return ""
//        }
//
//        set {
//            self.secondName = ""
//        }
//    }
//
//    override func perfomance() {
//        super.perfomance()
//        print("painting...")
//    }
//
//}
//
//class Singer: Artist {
//
//    override func perfomance() {
//        super.perfomance()
//        print("singing...")
//    }
//
//}
//
//var artists = [Painter(firstName: "Test", secondName: "Test"),
//               Singer(firstName: "Miron", secondName: "Yanovich")]
//
//artists.map { $0.perfomance() }
//
//
class Vehicle {

    var priceOfTrip: Int {
        return 1
    }

    var speedKmH: Int {
        return 1
    }

    var capacity: Int {
        return 1
    }

    func transportDataFor(distanceInKm: Int, countOfPeople: Int) {
        let timeOneTrip = Double(distanceInKm) / Double(speedKmH)

        let countOfTrip: Int

        if countOfPeople % capacity != 0 {
            countOfTrip = (countOfPeople / capacity) + 1
        } else {
            countOfTrip = countOfPeople / capacity
        }

        let summaryPrice = countOfTrip * priceOfTrip
        let summaryTime =  Double(countOfTrip) * timeOneTrip

        print("Trip to \(distanceInKm) km will take \(summaryTime) hours and \(summaryPrice)$ to transport \(countOfPeople) people")
        print("\(countOfTrip) shipments required")

    }
}

class Car: Vehicle {
    
    override var priceOfTrip: Int {
        return 50
    }
    
    override var speedKmH: Int {
        return 120
    }
    
    override var capacity: Int {
        return 4
    }
    
}

class Airplane: Vehicle {
    
    override var priceOfTrip: Int {
        return 500
    }
    
    override var speedKmH: Int {
        return 1000
    }
    
    override var capacity: Int {
        return 100
    }
    
}


var vehicles = [Car(), Airplane()]

vehicles.map {
    switch $0 {
        
    case is Car:
        print("Car transportation: ")
    case is Airplane:
        print("Airplane transportation: ")
    default:
        return
    }
    
    $0.transportDataFor(distanceInKm: 1200, countOfPeople: 500)
    
}
