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
            .minimumScaleFactor(0.3)
            .multilineTextAlignment(.center)
            .font(.system(size: 60, weight: .regular))
            .minimumScaleFactor(0.5)
            .padding(200)
            .frame(height: 700)
    }
}

struct previeie: PreviewProvider {
    static var previews: some View {
        Style7(title: "asljkhfsdhjkafsdlhjkasdfhkjladfshjkldsafhjkladfshkljadsflhjkadfslhjkadfslkhja")
    }
}

