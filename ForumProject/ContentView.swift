//
//  ContentView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ForumPostRow(model: ForumPostRow_Previews.allViewModel[0], expanded: false)
            ForumPostRow(model: ForumPostRow_Previews.allViewModel[1], expanded: true)
            ForumPostRow(model: ForumPostRow_Previews.allViewModel[2], expanded: false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
