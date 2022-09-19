import Cocoa

var greeting = "Hello, playground"

var a: Int? = 1

var b: Int! = 2

b = b + 3

type(of: b)

// Number 1

let first = "50"
let second = "20"
let third = "322Solo"
let four = "v1lat"
let five = "30"

var sum = 0

if let first = Int(first) {
    sum += first
}

if Int(second) != nil {
   sum += Int(second)!
}

if let third = Int(third) {
    sum += third
}

if Int(four) != nil {
    sum += Int(four)!
}

if let five = Int(five) {
    sum += five
}

print("The Sum is: \(sum) ")


// Number 2

//let serverRequest: (statusCode: Int, message: String?, errMsg: String?) = (350, "This is message", "Error")
//
//if let message = serverRequest.message, serverRequest.statusCode >= 200, serverRequest.statusCode < 300 {
//    print(message)
//} else if let error = serverRequest.errMsg {
//    print(error)
//}

let serverRequest2: (message: String?, errMsg: String?) = ("Hey", nil)

if let message = serverRequest2.message {
    print(message)
} else {
    print(serverRequest2.errMsg!)
}





// Number 3

typealias Student = (name: String?, machineNumber: Int?, mark: Int?)

var student1: Student = (nil, nil, nil)
var student2: Student = (nil, nil, nil)
var student3: Student = (nil, nil, nil)
var student4: Student = (nil, nil, nil)
var student5: Student = (nil, nil, nil)

student1.name = "Eugene"
student2.name = "Alex"
student3.name = "Julia"
student4.name = "Max"
student5.name = "Kate"

student1.machineNumber = 1
student3.machineNumber = 2
student4.machineNumber = 3
student5.machineNumber = 4

student1.mark = 5
student3.mark = 3
student4.mark = 4

// First student

if let machine = student1.machineNumber, let mark = student1.mark {
    print("Student: \(student1.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark: \(mark)"
    )
} else if let machine = student1.machineNumber {
    print("Student: \(student1.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark:  The student did not write the test"
    )
} else {
    print("Student: \(student1.name!)\n" +
          "Machine number: The student did not come to test\n" +
          "Mark:  The student did not write the test"
    )
}

print()
// Second Student

if let machine = student2.machineNumber, let mark = student2.mark {
    print("Student: \(student2.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark: \(mark)"
    )
} else if let machine = student2.machineNumber {
    print("Student: \(student2.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark:  The student did not write the test"
    )
} else {
    print("Student: \(student2.name!)\n" +
          "Machine number: The student did not come to test\n" +
          "Mark:  The student did not write the test"
    )
}

print()
// Third Student

if let machine = student3.machineNumber, let mark = student3.mark {
    print("Student: \(student3.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark: \(mark)"
    )
} else if let machine = student3.machineNumber {
    print("Student: \(student3.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark:  The student did not write the test"
    )
} else {
    print("Student: \(student3.name!)\n" +
          "Machine number: The student did not come to test\n" +
          "Mark:  The student did not write the test"
    )
}

print()
// Fourth Student

if let machine = student4.machineNumber, let mark = student4.mark {
    print("Student: \(student2.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark: \(mark)"
    )
} else if let machine = student4.machineNumber {
    print("Student: \(student4.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark:  The student did not write the test"
    )
} else {
    print("Student: \(student4.name!)\n" +
          "Machine number: The student did not come to test\n" +
          "Mark:  The student did not write the test"
    )
}

print()
// Fifth Student

if let machine = student5.machineNumber, let mark = student5.mark {
    print("Student: \(student5.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark: \(mark)"
    )
} else if let machine = student5.machineNumber {
    print("Student: \(student5.name!)\n" +
          "Machine number: \(machine)\n" +
          "Mark:  The student did not write the test"
    )
} else {
    print("Student: \(student5.name!)\n" +
          "Machine number: The student did not come to test\n" +
          "Mark:  The student did not write the test"
    )
}


