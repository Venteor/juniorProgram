import Foundation

class School {
    struct Person {
        let name: String
        let role: Role
    }

    enum Role {
        case student
        case teacher
        case administrator
    }

    var people: [Person]

    init(people: [Person]) {
        self.people = people
    }

    func addPerson(_ person: Person) {
        people.append(person)
    }
}
