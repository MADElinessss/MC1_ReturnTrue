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
        Image(uiImage: UIImage(named: "Image")!)
            .resizable()
            .scaledToFill()
            .padding(.leading, 100)
            .padding(.trailing,100)
            .padding(.bottom, 100)
    }
}
