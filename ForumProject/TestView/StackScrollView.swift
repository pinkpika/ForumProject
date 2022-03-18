//
//  StackScrollView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/18.
//

import SwiftUI

struct StackScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0...10, id: \.self) { i in
                    StackView()
                }
            }
        }.frame(maxHeight: 300.0)
    }
}

struct StackScrollView_Previews: PreviewProvider {
    static var previews: some View {
        StackScrollView()
    }
}
