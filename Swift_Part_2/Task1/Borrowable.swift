import Foundation

enum LibraryError: Error, Equatable {
    case itemNotFound
    case alreadyBorrowed
    case itemNotBorrowable
}

protocol Borrowable {
    var isBorrowed: Bool { get set }
    var borrowDate: Date? { get set }
    var returnDate: Date? { get set }
    
    mutating func checkOut()
    mutating func checkIn()
    func isOverdue() -> Bool
}
