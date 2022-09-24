//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Дмитрий Дуров on 23.09.2022.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContact() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                id: index,
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
    
}
