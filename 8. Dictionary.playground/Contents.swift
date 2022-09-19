import Cocoa

var greeting = "Hello, playground"


// Number 1

var journal = ["Eugene Borisov" : 5, "Alex Borisov" : 4, "Geor Bedoev" : 4,
               "Matvei Rubinchick" : 5, "Egor Letov" : 2]

journal["Alex Borisov"] = 5
journal["Egor Letov"] = 3

journal["Sergei Pimenov"] = 4
journal["Polina Oborotova"] = 3

journal["Matvei Rubinchick"] = nil
journal["Alex Borisov"] = nil

var sumOfMarks = 0

for (_, value) in journal {
    sumOfMarks += value
}

print("""
      Total group score = \(sumOfMarks)
      Average group score = \(Double(sumOfMarks) / Double(journal.count))
      """)

// Number 2

var dayInMonth = ["January" : 31, "February" : 28,
                  "March" : 31, "April" : 30,
                  "May" : 31, "June" : 30,
                  "July" : 31, "August" : 31,
                  "September" : 30, "October" : 31,
                  "November" : 30, "December" : 31]

for (month, days) in dayInMonth {
    print("In \(month) \(days) days")
}
print()

for month in dayInMonth.keys {
    print("In \(month) \(dayInMonth[month]!) days")
}

// Number 3

var letters = ["A", "B", "C", "D", "E", "F", "G", "H"]

var chessBoard = [String : Bool]()

for i in letters.indices {
    for j in 1...8 {
        let chessCase = letters[i] + String(j)
        let color = ((i + 1) + j) % 2 == 1

        chessBoard[chessCase] = color
        print("\(chessCase) is " + (color ? "white" : "black"), terminator: ";")
    }
    print()
}

print("\nDictionary: \n")
print(chessBoard)
