//
//  SwiftUIView.swift
//
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct Style13: StyleTemplate {

    var images: [UIImage]?

    var title: String?

    var subTitle: String?

    var mainColor: Color?

    var subColor: Color?

    var body: some View {
        Text(title!)
            .font(.system(size: 60, weight: .bold, design: .default))
            .multilineTextAlignment(.center)
            .frame(height: 550)
    }
}
