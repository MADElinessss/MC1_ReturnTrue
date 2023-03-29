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
        HStack {
            Spacer()
            Image(uiImage: images![0])
                .resizable()
                .scaledToFill()
                .frame(width: 520, height: 640)
                .mask({
                    Rectangle()
                        .frame(width: 520, height: 640)
                        .cornerRadius(4)
                })
            Spacer()
            Image(uiImage: images![0])
                .resizable()
                .scaledToFill()
                .frame(width: 320, height: 340)
                .mask({
                    Rectangle()
                        .frame(width: 320, height: 340)
                        .cornerRadius(4)
                    
                })
            Spacer()
        }
    }
}

struct preview12: PreviewProvider {
    static var previews: some View {
        Style12()
    }
}
