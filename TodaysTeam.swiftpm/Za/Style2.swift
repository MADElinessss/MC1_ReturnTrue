//
//  SwiftUIView.swift
//
//
//  Created by Sam Cha on 2023/03/27.
//

import SwiftUI

struct Style2: StyleTemplate {
    
    var images: [UIImage]? = [UIImage(named: "image")!]
    
    var title: String? = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    
    var subTitle: String?
    
    var mainColor: Color?
    
    var subColor: Color?
    
    var body: some View {
        ZStack{
            Image(uiImage: images![0])
                .resizable()
                .frame(height: 520)
                .aspectRatio(contentMode: .fill)
            Rectangle()
                .foregroundColor(Color.black.opacity(0.6))
            Text(title!)
                .frame(width: UIScreen.main.bounds.width * 0.8)
                .font(.system(size: 40, weight: .bold, design: .default))
                .foregroundColor(.white)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
        }
    }
}
