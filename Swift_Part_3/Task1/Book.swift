import Foundation

class Book: Item, Borrowable {
    var isBorrowed: Bool = false
    var borrowDate: Date?
    var returnDate: Date?
    
    func checkOut() {
        isBorrowed = true
        borrowDate = Date()
        returnDate = Calendar.current.date(byAdding: .day, value: 14, to: borrowDate!)
    }
    
    func checkIn() {
        isBorrowed = false
        borrowDate = nil
        returnDate = nil
    }
    
    func isOverdue() -> Bool {
        guard let returnDate = returnDate else { return false }
        return Date() > returnDate
    }
}
