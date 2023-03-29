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
            Text(subTitle!)
                .font(.system(size: 40, weight: .regular, design: .default))
                .multilineTextAlignment(.center)
        }
        .padding(100)
    }
}

struct prpr: PreviewProvider {
    static var previews: some View {
        Style3()
    }
}
