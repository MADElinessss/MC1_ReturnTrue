//
//  ProductDescriptionView.swift
//
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct ProductDescriptionView: View {
    
    var styles: [Style]
    
    var body: some View {
        VStack {
            ForEach(styles) { style in
                content(style)
            }
        }
    }
    
    @ViewBuilder
    func content(_ style: Style) -> some View {
        style.view
    }
}

