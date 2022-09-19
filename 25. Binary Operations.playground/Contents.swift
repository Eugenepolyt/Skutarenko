import UIKit

var greeting = "Hello, playground"

// HW 1

enum CheckList: UInt8 {
    case Bread = 0b00000001
    case Chicken = 0b00000010
    case Apples = 0b00000100
    case Pears = 0b00001000
}

extension CheckList {
    
    static func setProduct(mask: UInt8, product: CheckList) -> UInt8 {
        
        return mask | product.rawValue
        
    }
    
    static func checkProduct(mask: UInt8, product: CheckList) -> Bool {
        return mask & product.rawValue != 0
    }
}


var mask: UInt8 = 0b00010000

mask = CheckList.setProduct(mask: mask, product: .Chicken)

CheckList.checkProduct(mask: mask, product: .Chicken)
CheckList.checkProduct(mask: mask, product: .Apples)

// HW 2
extension UInt64 {
    func binary() -> String {
        var result = ""
        for i in 0...64 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result = (set ? "1" : "0") + result
        }
        return result
    }
}

//var sin: UInt8 = 0b00000001
//sin.binary()
//var left = true
//var counter = 0
//while counter != 29 {
//    print(sin.binary())
//    counter += 1
//
//    if sin == 128 {
//        left = false
//    }
//
//    if sin == 1 {
//        left = true
//    }
//
//    sin = left ? sin << 1 : sin >> 1
//
//}


// hw 3

func getChess() -> UInt64 {
    var a: UInt64 = 0
    var mask: UInt64 = 0b01010101
    var mask2: UInt64 = 0b10101010 << 8

    for i in 1...8 {
        if i % 2 == 1 {
            a = a | mask
            mask = mask << 16
        } else {
            print(mask2.binary())
            a = a | mask2
            if i == 6 {
                mask2 = mask2 << 15
                continue
            }
            mask2 = mask2 << 16
            
            
        }
        
    }
    
    return a

}

//var a = getChess().binary()

1 % 2

(UInt64(0b10101010) << 56).binary()
