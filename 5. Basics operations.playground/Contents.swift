import Cocoa

var greeting = "Hello, playground"

//// Number 1
//
let tupleBirthday = (day: 30, mouth: 11, year: 2001)
//
//let countOfSeconds = (31 + 31 + 31 + 31 + 31 + 31 + 30 + 30 + 30 + 29 + 28) * 24 * 3600
//
//print("From 01.01.2022 to 30.11.2022 will pass \(countOfSeconds) seconds")

//// Number 2
//
//let month = tupleBirthday.mouth
//
//if (1...3).contains(month) {
//    print("I was born in first quarter")
//} else if (4...6).contains(month) {
//    print("I was born in second quarter")
//} else if (7...9).contains(month) {
//    print("I was born in third quarter")
//} else {
//    print("I was born in fourth quarter")
//}


// Number 4

var chessCage = (row: "G", column: 5)

let numberRow: Int
var row = chessCage.row

if row == "A" {
    numberRow = 1
} else if row == "B" {
    numberRow = 2
} else if row == "C" {
    numberRow = 3
} else if row == "D" {
    numberRow = 4
} else if row == "E" {
    numberRow = 5
} else if row == "F" {
    numberRow = 6
} else if row == "G" {
    numberRow = 7
} else {
    numberRow = 8
}

if (numberRow + chessCage.column) % 2 == 0 {
    print("\(chessCage.row)\(chessCage.column) is a black cage")
} else {
    print("\(chessCage.row)\(chessCage.column) is a white cage")
}
