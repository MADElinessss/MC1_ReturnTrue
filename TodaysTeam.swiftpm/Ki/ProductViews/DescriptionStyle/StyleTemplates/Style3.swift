//
//  SwiftUIView.swift
//
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct Style3: StyleTemplate {
    
    var images: [UIImage]?
    
    var title: String?
    
    var subTitle: String?
    
    var mainColor: Color?
    
    var subColor: Color?
    
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image(uiImage: images![0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .clipped()
            }
            .padding(.leading, 100)
            .padding(.trailing,100)
            .padding(.bottom, 100)
            .frame(width: UIScreen.main.bounds.width, height: 650)
        }
    }
}
