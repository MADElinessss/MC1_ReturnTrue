//
//  SwiftUIView.swift
//
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct Style7: StyleTemplate {

    var images: [UIImage]?

    var title: String?

    var subTitle: String?

    var mainColor: Color?

    var subColor: Color?

    var body: some View {
        Text(title!)
            .multilineTextAlignment(.center)
            .font(.system(size: 60, weight: .regular))
            .padding(200)
    }
}
