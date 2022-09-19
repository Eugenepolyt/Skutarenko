import UIKit

// homework 1
// 1.1
extension Int {
    var isNegative: Bool {
        self < 0
    }
    
    var isPositive: Bool {
        self > 0
    }
}

1.isNegative
(-1).isNegative

// 1.2
extension Int {
    var bool: Bool {
        self == 0 ? false : true
    }
}

1.bool
0.bool

// 1.3
extension Int {
    
    var length: Int {
        String(self).count
    }
    
}

245.length

// 1.4
extension Int {
    
    subscript(index: Int) -> Int? {
        
        if index >= self.length || index < 0 {
            return nil
        }
        
        let string = String(self)
        let offsetIndex = string.index(string.endIndex, offsetBy: (-1 - index))
        
       
        return Int(string[offsetIndex...offsetIndex])
        
    }
    
}

12345[4]
1[1]

// homework 2

extension String {
    
    subscript(range: ClosedRange<Int>) -> String {
        
        get {
            let startIndex = self.index(self.startIndex, offsetBy: range.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: range.upperBound)
            return String(self[startIndex...endIndex])
        }
        
        set {
            self = self.replacingOccurrences(of: self[range], with: newValue)
        }
    }
    
    subscript(range: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: range.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: range.upperBound - 1)
            return String(self[startIndex...endIndex])
        }
        
        set {
            self = self.replacingOccurrences(of: self[range], with: newValue)
        }
    }
    
    func truncate(of count: Int) -> String {
        
        if count >= self.count - 1 {
            return self
        }
        
        return self[0...count] + "..."
        
    }
    
    
}

var string = "I love u"

string[2...5] = "hate"

string.truncate(of: 5)
