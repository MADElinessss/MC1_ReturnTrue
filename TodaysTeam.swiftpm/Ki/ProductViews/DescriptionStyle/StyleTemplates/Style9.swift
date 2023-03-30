//
//  SwiftUIView.swift
//
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct Style9: StyleTemplate {

    var images: [UIImage]?

    var title: String?

    var subTitle: String?

    var mainColor: Color?

    var subColor: Color?

    var body: some View {
        HStack {
            Spacer()
                .frame(maxWidth: 110)
            Image(uiImage: images![0])
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipped()
                .mask {
                    Circle()
                        .frame(width: 300, height: 300)
                }
            Spacer()
                .frame(minWidth: 10, maxWidth: 100)
            VStack {
                Text(title!)
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .multilineTextAlignment(.center)
                Text(subTitle!)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .multilineTextAlignment(.center)
            }
          Spacer()
                
        }
        .frame(height: 570)
    }
}

