//
//  DetailInformationView.swift
//  ContactListSwiftUI
//
//  Created by Дмитрий Дуров on 23.09.2022.
//

import SwiftUI

struct DetailInformationView: View {
    let contact: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 120, height: 120)
            
            HStack {
                Image(systemName: "phone")
                Text(contact.phoneNumber)
                Spacer()
            }
            HStack {
                Image(systemName: "tray")
                Text(contact.email)
                Spacer()
            }
            Spacer()
        }
        .padding()
        .navigationTitle(contact.fullName)
    }
}

