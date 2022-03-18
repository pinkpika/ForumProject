//
//  TextAndImageView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/17.
//

import SwiftUI

struct TextAndImageView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var fullText: String = "This is some editable text..."
    
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
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .background(Color.init(white: 0.9))
    }
}

struct TextAndImageView_Previews: PreviewProvider {
    static var previews: some View {
        TextAndImageView()
    }
}
