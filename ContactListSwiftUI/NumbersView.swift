//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Дмитрий Дуров on 23.09.2022.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) {contact in
                Section {
                    HStack {
                        Image(systemName: "phone")
                        Text(contact.phoneNumber)
                    }
                    HStack {
                        Image(systemName: "tray")
                        Text(contact.email)
                    }
                } header: {
                    Text(contact.fullName)
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

