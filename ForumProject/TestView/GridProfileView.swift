//
//  GridProfileView.swift
//  ForumProject
//
//  Created by cm0620 on 2022/3/22.
//

import SwiftUI

struct GridProfileView: View {
    var columes = [
        GridItem(spacing: 0),
        GridItem(spacing: 0),
        GridItem(spacing: 0)
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columes, spacing: 0){
                ForEach(0...10, id: \.self) { i in
                    ProfileView()
                }
            }
        }
    }
}

struct GridProfileView_Previews: PreviewProvider {
    static var previews: some View {
        GridProfileView()
    }
}
