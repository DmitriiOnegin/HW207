//
//  Person.swift
//  HW207
//
//  Created by Dmitrii Onegin on 29.12.2021.
//

import Foundation

struct Person {
    let name: String
    let sername: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(sername) \(email) \(phone)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons = [Person]()
        let dataManager = DataManager.shared
        while persons.count < 10 {
            let name = dataManager.names.randomElement() ?? ""
            let sername = dataManager.sernames.randomElement() ?? ""
            let email = dataManager.emails.randomElement() ?? ""
            let phone = dataManager.phones.randomElement() ?? ""
            let newPerson = Person(name: name, sername: sername, email: email, phone: phone)
            var isDiferent = false
            if !persons.isEmpty {
                for person in persons {
                    if person != newPerson {
                        isDiferent = true
                        print(isDiferent)
                    }
                }
                if isDiferent {
                    persons.append(newPerson)
                }
            } else {
                persons.append(newPerson)
            }
            
            
        }
        print(persons.count)
        return persons
    }
}

extension Person: Equatable {
    static func != (lhs: Person, rhs: Person) -> Bool {
        lhs.name != rhs.name &&
        lhs.sername != rhs.sername &&
        lhs.email != rhs.email &&
        lhs.phone != rhs.phone
    }
}
