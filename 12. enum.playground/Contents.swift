import Cocoa

var greeting = "Hello, playground"


// Number 1

enum ChessPiece {
    case king(color: Color, row: Row, column: Int)
    case queen(color: Color, row: Row, column: Int)
    case bishop(color: Color, row: Row, column: Int)
    case rook(color: Color, row: Row, column: Int)
    case pawn(color: Color, row: Row, column: Int)
    case knight(color: Color, row: Row, column: Int)

    enum Color: String {
        case white = "White", black = "Black"
    }
    
    enum Row: String {
        case a = "A"
        case b = "B"
        case c = "C"
        case d = "D"
        case e = "E"
        case f = "F"
        case g = "G"
        case h = "H"
    }
}

let whiteRook: ChessPiece = .rook(color: .white, row: .a, column: 6)
let whiteRookSecond: ChessPiece = .rook(color: .white, row: .b, column: 5)
let blackKing: ChessPiece = .king(color: .black, row: .a, column: 8)

let checkMateArray = [whiteRook, whiteRookSecond, blackKing]


// Number 2


func chessPieceInfo(chessPiece piece: ChessPiece) {
    
    func printPiece(name: String, color: String, row: String, column: Int) {
        print("\(color) \(name) has coordinates \(row)\(column)")
    }
    
    switch piece {
    case let .rook(color, row, column):
        printPiece(name: "Rook", color: color.rawValue, row: row.rawValue, column: column)
    case let .king(color, row, column):
        printPiece(name: "King", color: color.rawValue, row: row.rawValue, column: column)
    case let .queen(color, row, column):
        printPiece(name: "Queen", color: color.rawValue, row: row.rawValue, column: column)
    case let .pawn(color, row, column):
        printPiece(name: "Pawn", color: color.rawValue, row: row.rawValue, column: column)
    case let .bishop(color, row, column):
        printPiece(name: "Bishop", color: color.rawValue, row: row.rawValue, column: column)
    case let .knight(color, row, column):
        printPiece(name: "Knight", color: color.rawValue, row: row.rawValue, column: column)
    }
    
}

checkMateArray.map {
    chessPieceInfo(chessPiece: $0)
}


// Number 3

func printDesk(chessPieces array: [ChessPiece]) {
    
    func getUnicode(piece: ChessPiece, color: ChessPiece.Color) -> String {
        
        let indent: UInt32
        
        switch piece {
        case .king:
            indent = 0
        case .queen:
            indent = 1
        case .rook:
            indent = 2
        case .bishop:
            indent = 3
        case .knight:
            indent = 4
        case .pawn:
            indent = 5
        }
        
        if color == .white {
            let whiteKingValue: UInt32 = 0x2654
            return String(UnicodeScalar(whiteKingValue + indent)!)
        } else {
            let blackKingValue: UInt32 = 0x265A
            return String(UnicodeScalar(blackKingValue + indent)!)
        }
        
    }
    
    var desk = [Int : [String : String]]()
    
    let letters = ["A" : 1, "B" : 2, "C" : 3, "D": 4, "E" : 5, "F" : 6, "G" : 7, "H" : 8]
    
    for i in 1...8 {
        for letter in letters.keys {
            let cell = (letters[letter]! + i) % 2 == 0 ? "\u{25FC}" : "\u{25FB}"
            
            guard let _ = desk[i] else {
                desk[i] = [:]
                continue
            }
            desk[i]![letter] = cell
        }
    }
    
    for piece in array {
        
        let resultColumn: Int
        let resultRow: String
        let unicode: String
        
        switch piece {
        case let .rook(color, row, column):
            (resultColumn, resultRow, unicode) = (column, row.rawValue, getUnicode(piece: piece, color: color))
        case let .king(color, row, column):
            (resultColumn, resultRow, unicode) = (column, row.rawValue, getUnicode(piece: piece, color: color))
        case let .queen(color, row, column):
            (resultColumn, resultRow, unicode) = (column, row.rawValue, getUnicode(piece: piece, color: color))
        case let .pawn(color, row, column):
            (resultColumn, resultRow, unicode) = (column, row.rawValue, getUnicode(piece: piece, color: color))
        case let .bishop(color, row, column):
            (resultColumn, resultRow, unicode) = (column, row.rawValue, getUnicode(piece: piece, color: color))
        case let .knight(color, row, column):
            (resultColumn, resultRow, unicode) = (column, row.rawValue, getUnicode(piece: piece, color: color))
        }
        
        desk[resultColumn]![resultRow] = unicode
    }
    
    
    
    func printLetters() {
        print(" ",terminator: "")
        for letter in letters.keys.sorted() {
            print(" " + letter, terminator: "")
        }
        print()
    }
    
    printLetters()
    
    for i in desk.keys.sorted(by: >) {
        
        let line = desk[i]!
        
        print(i, terminator: " ")
        for char in line.keys.sorted() {
            print(line[char]! + " ", terminator: "")
        }
        print(i)
    }
    
    printLetters()
}

printDesk(chessPieces: checkMateArray)


// Number 4 ( Tak vpadly  )




func checkPiece(coords: (row: String, column: Int)) -> ChessPiece.Color? {
    var result: ChessPiece.Color?
    for i in checkMateArray {
        switch i {
        case let .king(color, row, column), let .queen(color, row, column), let .rook(color, row, column):
            if coords == (row.rawValue, column) {
                result = color
            }
        case let .pawn(color, row, column), let .bishop(color, row, column), let .knight(color, row, column):
            if coords == (row.rawValue, column) {
                result = color
            }
        }
    }
    
    return result
}


func checkMove(chessPiece piece: ChessPiece, newCoord: (row: String, column: Int)) {
    
    
    
    let dictMove = ["Pawn" : []]
    
    switch piece {
    case let .pawn(color, row, column):
        return
        
//    case let .king(color, row, column):
//
//    case let .queen(color, row, column):
//
//    case let .pawn(color, row, column):
//
//    case let .bishop(color, row, column):
//
//    case let .knight(color, row, column):
        
    default:
        return
    }
}

func movePiece(chessPiece piece: ChessPiece, newCoord: (row: String, column: Int)) {
    
    
    switch piece {
    case let .rook(color, row, column):
        return
        
//    case let .king(color, row, column):
//
//    case let .queen(color, row, column):
//
//    case let .pawn(color, row, column):
//
//    case let .bishop(color, row, column):
//
//    case let .knight(color, row, column):
        
    default:
        return
    }
    
}

checkMove(chessPiece: whiteRook, newCoord: ("A", 1))
