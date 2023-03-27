//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct ProductTabView: View {
    var body: some View {
        TabView {
            ForEach(0..<30) { i in
                ZStack {
                    Color.black
                    Text("Row: \(i)").foregroundColor(.white)
                }
                .clipShape(Rectangle())
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 1000)
        .tabViewStyle(PageTabViewStyle())
    }
}
