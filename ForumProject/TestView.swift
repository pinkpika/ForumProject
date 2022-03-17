//
//  TestView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/17.
//

import SwiftUI

struct TestView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var fullText: String = "This is some editable text..."
    @State private var value: Int = 0
    @State private var speed = 50.0
    @State private var isEditing = false
    @State private var vibrateOnRing = false
    
    var body: some View {

        VStack {
            Text("Hamlet").font(.title)
            Label("Lightning", systemImage: "bolt.fill")
            TextField(
                "User name (email address)",
                text: $username
            )
            SecureField(
                "Password",
                text: $password
            ) {
                //handleLogin(username: username, password: password)
            }
            TextEditor(text: $fullText)
            Button("Sign In", action: {})
            Link("abc", destination: URL(string: "https://www.abc.com/")!)
            Menu("Actions") {
                Button("Copy", action: {})
                Button("Delete", action: {})
                Menu("More") {
                    Button("12345", action: {})
                }
            }
            Slider(
                value: $speed,
                in: 0...100,
                onEditingChanged: { editing in
                    isEditing = editing
                }
            )
            
            Stepper {
                Text("Value: \(value)")
            } onIncrement: {
                value += 1
            } onDecrement: {
                value -= 1
            }
        }
        .background(Color.init(white: 0.9))
        .toggleStyle(.switch)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
