//
//  ForumPostRow.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/16.
//

import SwiftUI
import SDWebImageSwiftUI

struct ForumPostViewModel: Identifiable {
    var id: Int
    var headImageUrl: String
    var name: String
    var message: String
    var color: Color
}

struct ForumPostRow: View {
    let model: ForumPostViewModel
    let expanded: Bool

    var body: some View {
        VStack {
            HStack {
                WebImage(url: URL(string: model.headImageUrl))
                    .onSuccess { image, data, cacheType in }
                    .resizable()
                    .placeholder(Image(systemName: "photo"))
                    .placeholder {
                        Rectangle().foregroundColor(.gray)
                    }
                    .indicator(.activity)
                    .transition(.fade(duration: 0.5))
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(25.0)
                Text(model.name)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "star")
                        .modifier(ToolButtonModifier())
                }
                Button(action: {}) {
                    Image(systemName: "info.circle")
                        .modifier(ToolButtonModifier())
                }
            }
            .padding(.top, 12)
            Spacer()
            HStack(spacing: expanded ? 20 : -30) {
                Text(model.message)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }
            .padding(.bottom, 12)
            .opacity(expanded ? 1.0 : 0.0)
            .frame(maxHeight: expanded ? .infinity : 0)
        }
        .frame(height: expanded ? 120 : 80)
        .padding(.leading, 23)
        .padding(.trailing, 15)
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(model.color, style: StrokeStyle(lineWidth: 4))
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.white, model.color]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
            }
        )
        .padding(.horizontal)
    }
}

struct ToolButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
    }
}

struct ForumPostRow_Previews: PreviewProvider {
    
    static let headImageUrl = "https://pinkpika.github.io/pinkblog/img/avatar.jpg"
    
    static let allViewModel: [ForumPostViewModel] = [
        ForumPostViewModel(id: 1, headImageUrl: headImageUrl, name: "pink", message: "1234567", color: .yellow),
        ForumPostViewModel(id: 2, headImageUrl: headImageUrl, name: "pink", message: "000000000000", color: .red),
        ForumPostViewModel(id: 3, headImageUrl: headImageUrl, name: "pink", message: "我是誰？", color: .red),
    ]
    
    static var previews: some View {
        VStack {
            ForumPostRow(model: allViewModel[0], expanded: false)
            ForumPostRow(model: allViewModel[1], expanded: true)
            ForumPostRow(model: allViewModel[2], expanded: false)
        }
    }
}

