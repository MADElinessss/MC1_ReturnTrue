//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct Style1: StyleTemplate {
    
    var images: [UIImage]?
    
    var title: String?
    
    var subTitle: String?
    
    var mainColor: Color?
    
    var subColor: Color?
    
    var body: some View {
        ZStack {
            Image(uiImage: images![0])
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: 1024)
                .clipped()
            VStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(minHeight: 50)
                HStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(minWidth: 100)
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(minHeight: 100)
                            .layoutPriority(1)
                        Text(title!)
                            .padding(100)
                            .font(.system(size: 48, weight: .regular, design: .rounded))
                    }
                    .layoutPriority(1)
                }
                Rectangle()
                    .foregroundColor(.clear)

            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 1024)
    }
}
