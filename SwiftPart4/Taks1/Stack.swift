import Foundation

class Stack<T> {
    private var elements: [T] = []

    func push(_ element: T) {
        elements.append(element)
    }

    func pop() -> T? {
        return elements.popLast()
    }

    func size() -> Int {
        return elements.count
    }

    func printStackContents() {
        for element in elements {
            print(element)
        }
    }
}
