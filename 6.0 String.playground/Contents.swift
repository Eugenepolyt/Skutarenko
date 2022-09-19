import Cocoa

// Number 1

let a = "322Solo", b = "5", c = "5", d = "5dd", e = "10"

let intA = Int(a) ?? 0
let intB = Int(b) ?? 0
let intC = Int(c) ?? 0
let intD = Int(d) ?? 0
let intE = Int(e) ?? 0

let sum = intA + intB + intD + intC + intE

let strA = Int(a) == nil ? "nil" : a
let strB = Int(b) == nil ? "nil" : b
let strC = Int(c) == nil ? "nil" : c
let strD = Int(d) == nil ? "nil" : d
let strE = Int(e) == nil ? "nil" : e

let concatenation = strA + " + " + strB + " + " + strC + " + " + strD + " + " + strE + " = " + String(sum)
let interpolation = "\(strA) + \(strB) + \(strC) + \(strD) + \(strE) = \(sum)"

// Number 2

let favoriteSymbols = "\u{1F47E}\u{1F9D3}\u{1F3FF}\u{1F639}\u{1F63B}\u{1F468}"

NSString(string: favoriteSymbols).length
favoriteSymbols.count

// Number 3

let alphavite = "abcdefghijklmnopqrstuvwxyz"
let letter: Character = "k"

var index = -1
for i in alphavite.indices {
    index += 1
    if letter == alphavite[i] {
        print("Letter \"\(letter)\" has \(i) swift index and \(index) obj-c index")
    }
    
}

