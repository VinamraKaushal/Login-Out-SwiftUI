//
//  MainView.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ChatView()
                .tabItem {
                    Label("Main", systemImage: "house.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .toolbarBackground(.visible, for: .tabBar)
    }
}

#Preview {
    MainView()
}
