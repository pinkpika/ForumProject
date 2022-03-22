//
//  ProfileView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/18.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack() {
                VStack(alignment: .leading) {
                    Text("PinkPika")
                        .font(.headline)
                    Text("iOS Developer")
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .background(Color.primary
                            .colorInvert()
                            .opacity(0.75))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
