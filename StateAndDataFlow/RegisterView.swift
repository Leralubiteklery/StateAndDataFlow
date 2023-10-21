//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.09.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var user: UserManager
    @ObservedObject var textCounter = TextCounter()
    @State var textColor = Color(.red)
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $textCounter.text)
                    .multilineTextAlignment(.center)
                Text("\(textCounter.counter)")
                    .foregroundColor(setColor())
                Spacer()
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
                .disabled(textCounter.text.count < 3)
            }
        }
    }
    
    private func registerUser() {

        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
    
    private func setColor() -> Color {
        if let counter = Int(textCounter.counter) {
            if counter >= 3 {
                textColor = Color(.gray)
            } else {
                textColor = Color(.gray)
            }
        }
        return textColor
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
