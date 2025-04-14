import Foundation

class Library {
    var items: [String: Item] = [:]
    
    func addBook(_ book: Book) {
        items[book.id] = book
    }
    
    func borrowItem(by id: String) throws -> Item {
        guard let item = items[id] else {
            throw LibraryError.itemNotFound
        }
        
        guard var borrowableItem = item as? Borrowable else {
            throw LibraryError.itemNotBorrowable
        }
        
        if borrowableItem.isBorrowed {
            throw LibraryError.alreadyBorrowed
        }
        
        borrowableItem.checkOut()
        
        if let book = item as? Book {
            items[id] = book // Save updated state
        }
        
        return item
    }
}
