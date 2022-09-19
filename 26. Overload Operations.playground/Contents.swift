import UIKit

struct Point {
    var x: Int
    var y: Int
}

var a = Point(x: 1, y: 1)
var b = Point(x: 2, y: 2)

func + (a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

a + b

func += (a: inout Point, b: Point) {
    a = a + b
}



a += b
a

// HW 3.1

func += (string: inout String, number: Int) {
    string += String(number)
}

var string = "Student "
string += 1

// HW 3.2

infix operator **

func ** (first: inout String, second: String) {
    let intersect = Set(first.lowercased()).intersection(Set(second.lowercased()))
    var result = ""
    
    for char in first {
        if intersect.contains(char) {
            result += String(char.uppercased())
        } else {
            result += String(char)
        }
    }
    first = result
}

var test = "abcd"
var test2 = "abc"
test ** test2

