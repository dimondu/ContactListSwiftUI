//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Дмитрий Дуров on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getContact()
    
    var body: some View {
        
        TabView {
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

