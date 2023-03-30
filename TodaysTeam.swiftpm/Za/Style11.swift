//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct Style11: StyleTemplate {
    
    var images: [UIImage]? = [UIImage(named: "Style11")!]
    
    var title: String? = "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    
    var subTitle: String?
    
    var mainColor: Color?

    var subColor: Color?
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.black)
                .frame(height: 640)
            Text(title!)
                .frame(width: UIScreen.main.bounds.width * 0.9)
                .font(.system(size: 100, weight: .bold, design: .default))
                .foregroundColor(.white)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
            Image(uiImage: images![0])
                .resizable()
                .frame(width: 640, height: 640)
        }

    }
}


