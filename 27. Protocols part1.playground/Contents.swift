import UIKit

// hw 2
protocol Food {
    var name: String { get }
    
    func getTast()
}

protocol Storable {
    var expired: Bool { get set }
    var daysToExpired: Int { get set }
}

class FoodClass: Food {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getTast() {
        print("Its no tast, just eat")
    }
    
}

class Chocolate: FoodClass {
    override func getTast() {
        print("Very tasty and sweet")
    }
}

class Meat: FoodClass, Storable {
    
    var daysToExpired = 20
    var expired: Bool = false
    
    override func getTast() {
        print("Hearty and tasty")
    }
}

class Milk: FoodClass, Storable {
    
    var daysToExpired = 15
    var expired: Bool = false
    
    override func getTast() {
        print("Very fresh milk taste")
    }
}

class Medecine: Storable {
    var daysToExpired: Int = 25
    var expired: Bool = false
}




var chocolate = Chocolate(name: "Alpen Gold")
var meat = Meat(name: "Pig")
var milk = Milk(name: "Prostokvasha")
var medicine = Medecine()
var food: [Any] = [chocolate, meat, milk, medicine]

func putInRefrigerator(eat: [Any]) -> [Storable & Food] {
    
    var refrigerator = [Storable & Food]()
    
    for eat in food {
        if let eat = eat as? Storable & Food, !eat.expired {
            
            refrigerator.append(eat)
            
        }
    }
    return refrigerator.sorted { a, b in
        if a.daysToExpired == b.daysToExpired {
            return a.name < b.name
        } else {
            return a.daysToExpired < b.daysToExpired
        }
    }
}

var refrigerator = putInRefrigerator(eat: food)




