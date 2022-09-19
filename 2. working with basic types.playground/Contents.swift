import Cocoa

var greeting = "Hello, playground"

// Number 1

print("""
Int8 min = \(Int8.min)
Int8 max = \(Int8.max)
---
Int16 min = \(Int16.min)
Int16 max = \(Int16.max)
---
Int32 min = \(Int32.min)
Int32 max = \(Int32.max)
---
Int64 min = \(Int64.min)
Int64 max = \(Int64.max)
---
UInt8 min = \(UInt8.min)
UInt8 max = \(UInt8.max)
---
UInt16 min = \(UInt16.min)
UInt16 max = \(UInt16.max)
---
UInt32 min = \(UInt32.min)
UInt32 max = \(UInt32.max)
---
UInt64 min = \(UInt64.min)
UInt64 max = \(UInt64.max)
---
Int min = \(Int.min)
Int max = \(Int.max)
---
UInt min = \(UInt.min)
UInt max = \(UInt.max)
""")

// Number 2

let integer = 2
let float: Float = 2.5
let double = 3.5

let sumOfConstInt = Int(Double(integer) + Double(float) + double)
let sumOfConstFloat = Float(integer) + Float(double) + float
let sumOfConstDouble = Double(integer) + Double(float) + double

type(of: sumOfConstInt)
type(of: sumOfConstFloat)
type(of: sumOfConstDouble)

// Number 3

if Double(sumOfConstInt) > sumOfConstDouble {
    print("Double is more precise")
} else {
    print("Integer sum is equal or more than double")
}
