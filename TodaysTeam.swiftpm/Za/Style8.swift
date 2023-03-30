//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct Style8: StyleTemplate {
    
    var images: [UIImage]? = [UIImage(named: "image")!]
    
    var title: String? = "Zam is fun beacuase ...."
    
    var subTitle: String? = "alkjdjfjf"
    
    var mainColor: Color?
    
    var subColor: Color?
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Text(title!)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                Text(subTitle!)
                    .font(.system(size: 28, weight: .regular, design: .rounded))
            }
            Spacer()
            Image(uiImage: images![0])
                .resizable()
                .frame(width: 400,height: 472)
                .aspectRatio(contentMode: .fill)
              
        }
        .frame(height: 470)
    }
}
