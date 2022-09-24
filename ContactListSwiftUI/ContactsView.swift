//
//  Contacts.swift
//  ContactsUI
//
//  Created by Дмитрий Дуров on 23.09.2022.
//

import SwiftUI

struct ContactsView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) {contact in
                NavigationLink(destination: DetailInformationView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

