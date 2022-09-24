//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Дмитрий Дуров on 23.09.2022.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        NavigationStack {
            Text("Somehow")
        }.navigationTitle("Contact List")
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
