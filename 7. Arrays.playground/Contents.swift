import Cocoa

var greeting = "Hello, playground"


var array = ["a", "b"]

array += ["b", "d"]

array[1...2] = ["a"]

array

// Number 1

//1.1
print("\nNumber 1.1\n")

let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for day in daysInMonths {
    print(day)
}
//1.2
print("\nNumber 1.2\n")
let nameOfMonths = ["January", "February", "March", "April",
                    "May", "June", "July", "August", "September",
                    "October", "November", "December"]

for i in daysInMonths.indices {
    print("In \(nameOfMonths[i]) \(daysInMonths[i]) days")
}

//1.3
var turpleArray = Array(zip(nameOfMonths, daysInMonths))
type(of: turpleArray)

print("\nNumber 1.3\n")
for (name, days) in turpleArray {
    print("In \(name) \(days) days")
}

//1.4.1
print("\nNumber 1.4.1\n")
for (name, days) in turpleArray.reversed() {
    print("In \(name) \(days) days")
}

//1.4.2

print("\nNumber 1.4.2\n")

for i in stride(from: turpleArray.count-1, through: 0, by: -1) {
    print("In \(turpleArray[i].0) \(turpleArray[i].1) days")
}

//1.4.3

print("\nNumber 1.4.3\n")

var duplicateArray = turpleArray

for _ in duplicateArray.indices {
    let lastElement = duplicateArray.removeLast()
    print("In \(lastElement.0) \(lastElement.1) days")
}

// 1.5

print("\nNumber 1.5\n")

let date = (month: "November", day: 29)
var countOfDays = 0
for (month, day) in turpleArray {
    if month == date.month {
        break
    }
    countOfDays += day
}
countOfDays += date.day

print("Count of days from 1.1.2022 to 29.11.2022 is \(countOfDays)")

// 2

let arrayToSum = [5, nil, 5, nil, nil, 5, nil, 5]

var sumOptionalBinding = 0
var sumForceUnwrapping = 0
var sumOperator = 0

for number in arrayToSum {

    if let number = number {
        sumOptionalBinding += number
    }

    if number != nil {
        sumForceUnwrapping += number!
    }

    sumOperator += number ?? 0

}

print("""
    Number 2

    Sumary by optional binding: \(sumOptionalBinding)
    Sumary by force unwrapping: \(sumForceUnwrapping)
    Sumary by ??: \(sumOperator)
    """)

// Number 3

let alphavite = "abcdefghijklmnopqrstuvwxyz"

var reversedAlphavite = [String]()

for letter in alphavite {
    reversedAlphavite.insert(String(letter), at: 0)
}

print("Number 3\nArray of reversed alphavite: ", terminator: "")
print(reversedAlphavite)

