import Foundation

func countStudents(_ school: School) -> Int {
    return school.people.filter { $0.role == .student }.count
}

func countTeachers(_ school: School) -> Int {
    return school.people.filter { $0.role == .teacher }.count
}

func countAdministrators(_ school: School) -> Int {
    return school.people.filter { $0.role == .administrator }.count + 1
}
