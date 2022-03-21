//
//  GridView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/21.
//

import SwiftUI

struct GridView: View {
    
    let rows: [GridItem] = Array(repeating: GridItem() , count: 2)
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var body: some View {
        VStack(spacing: 10){
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, alignment: .top) {
                    ForEach((0...79), id: \.self) {
                        let codepoint = $0 + 0x1f600
                        let codepointString = String(format: "%02X", codepoint)
                        Text("\(codepointString)")
                            .font(.footnote)
                        let emoji = String(Character(UnicodeScalar(codepoint)!))
                        Text("\(emoji)")
                            .font(.largeTitle)
                    }
                }
            }.frame(height: 100)
            ScrollView(.vertical){
                LazyVGrid(columns: columns) {
                     ForEach((0...79), id: \.self) {
                         let codepoint = $0 + 0x1f600
                         let codepointString = String(format: "%02X", codepoint)
                         Text("\(codepointString)")
                         let emoji = String(Character(UnicodeScalar(codepoint)!))
                         Text("\(emoji)")
                     }
                 }.font(.largeTitle)
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
