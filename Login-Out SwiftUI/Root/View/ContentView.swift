//
//  ContentView.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                MainView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
