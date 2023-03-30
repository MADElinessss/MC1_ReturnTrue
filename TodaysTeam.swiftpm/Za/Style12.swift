//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct Style12: StyleTemplate {
    
    var images: [UIImage]? = [UIImage(named: "Style14")!]
    
    var title: String?
    
    var subTitle: String?
    
    var mainColor: Color?
    
    var subColor: Color?
    
    var body: some View {
        GeometryReader { proxy in
            HStack {
                Spacer()
                Image(uiImage: images![0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: proxy.size.width / 2, height: 640)
                    .mask({
                        Rectangle()
                            .frame(width: proxy.size.width / 2, height: 640)
                            .cornerRadius(4)
                    })
                Spacer()
                VStack {
                    Spacer()
                        
                    Image(uiImage: images![0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: proxy.size.width / 3, height: proxy.size.width / 3)
                        .mask({
                            Rectangle()
                                .frame(width: proxy.size.width / 3, height: proxy.size.width / 3)
                                .cornerRadius(4)
                        })
                    Spacer()
                        .frame(maxHeight: 140)
                }
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: 750)
        }
    }
}
