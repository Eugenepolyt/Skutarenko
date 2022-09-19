import Cocoa

var greeting = "Hello, playground"

// Number 1

struct Student {
    let firstName: String
    let lastName: String
    let yearOfBirth: Int
    let averageScore: Double
}

var student1 = Student(firstName: "Eugene", lastName: "Borisov", yearOfBirth: 2001, averageScore: 4.36)
var student2 = Student(firstName: "Alex", lastName: "Borisov", yearOfBirth: 1995, averageScore: 3.78)
var student3 = Student(firstName: "Geor", lastName: "Bondarenko", yearOfBirth: 2000, averageScore: 4.7)

var journal = [student1, student2, student3]

// Number 2

func printStudents(students: [Student]) {
    for i in students.indices {
        print("\(i + 1). Name: \(students[i].firstName)\nLastName: \(students[i].lastName)\n"
             + "Year Of Birth \(students[i].yearOfBirth)\nAverage score \(students[i].averageScore)")
        print("----------------------------------")
    }
}

//printStudents(students: journal)

// Number 3

let sortedJournal = journal.sorted { $0.averageScore > $1.averageScore }
//printStudents(students: sortedJournal)

// Number 4

let sortedByName = journal.sorted { second, first in
    if second.lastName != first.lastName {
        return second.lastName < first.lastName
    } else {
        return second.firstName < first.firstName
    }
}

printStudents(students: sortedByName)

// Number 4 - изменится так как value type, Number 5 - не изменится так как reference type

