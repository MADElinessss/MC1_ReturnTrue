//
//  SwiftUIView.swift
//  
//
//  Created by Sam Cha on 2023/03/27.
//

import SwiftUI

struct Style4: StyleTemplate {
    var images: [UIImage]? = [UIImage(named: "Style4_1")!,UIImage(named: "Style4_2")!,UIImage(named: "Style4_3")!]
    
    var title: String?
    
    var subTitle: String?
    
    var mainColor: Color?
    
    var subColor: Color?
    
    var body: some View {
        GeometryReader { proxy in
            HStack{
                Spacer()
                Image(uiImage: images![0])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width / 3.5)
                    .clipShape(Circle())
                Spacer()
                Image(uiImage: images![1])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width / 3.5)
                    .clipShape(Circle())
                Spacer()
                Image(uiImage: images![2])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.size.width / 3.5)
                    .clipShape(Circle())
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 390)
    }
}

