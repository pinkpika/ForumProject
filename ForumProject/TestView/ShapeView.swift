//
//  ShapeView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/18.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack{
            Circle()
            Rectangle()
                .fill(.pink)
                .frame(width: 100, height: 100, alignment: .center)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.white, .yellow]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(width: 200, height: 200, alignment: .center)
        }
        .background(Color.init(white: 0.9))
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
