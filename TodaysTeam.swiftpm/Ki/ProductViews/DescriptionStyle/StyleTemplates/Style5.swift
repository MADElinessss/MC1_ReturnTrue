//
//  SwiftUIView.swift
//
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct Style5: StyleTemplate {

    var images: [UIImage]?

    var title: String?

    var subTitle: String?

    var mainColor: Color?

    var subColor: Color?

    var body: some View {
        VStack {
            Text(title!)
                .font(.system(size: 60, weight: .bold, design: .default))
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
            Text(subTitle!)
                .font(.system(size: 40, weight: .regular, design: .default))
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
        }
        .padding(100)
        .frame(width: UIScreen.main.bounds.width, height: 350)
    }
}

