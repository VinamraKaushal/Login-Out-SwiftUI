//
//  ChatView.swift
//  Login-Out SwiftUI
//
//  Created by Vinamra Kaushal on 05/03/24.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            Image("chat")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .padding(.bottom, 30)
            Text("WELCOME!!")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.indigo)
            Text("Thank you for joining us")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.indigo)
        }
    }
}

#Preview {
    ChatView()
}
