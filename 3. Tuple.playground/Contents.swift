import Cocoa

var greeting = "Hello, playground"

let tuple = (name: "Eugene", secondName: "Borisov")

let (_, secondName) = tuple

secondName

tuple.name
tuple.secondName

// Number 1

typealias Characteristics = (pushUps: Int, pullUps: Int, sitUps: Int)

var myCharacteristics: Characteristics = (20, 15, 50)

print(myCharacteristics)

// Number 2

print("Max of push ups = \(myCharacteristics.pushUps)")
print("Max of pull ups = \(myCharacteristics.1)")
print("Max of sit ups = \(myCharacteristics.sitUps)")
print()
print()

// Number 3

var brotherCharacteristics: Characteristics = (25, 30, 100)

let temp = myCharacteristics
myCharacteristics = brotherCharacteristics
brotherCharacteristics = temp

print(myCharacteristics)
print(brotherCharacteristics)

print()
print()

// Number 4

let differenceChar: Characteristics = (myCharacteristics.0 - brotherCharacteristics.0,
                                       myCharacteristics.1 - brotherCharacteristics.1,
                                       myCharacteristics.2 - brotherCharacteristics.2)

print("Difference bettwen me and brother \n \(differenceChar)")
