//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    ProductTabView()
                    ProductTitleView()
                    Spacer()
                    ProductDescriptionView(styles: [.style3, .style5, .style6, .style7, .style9, .style10, .style13])
                }
            }
            .modifier(SetNavigaitonBar())
        }
        .navigationBarBackButtonHidden()
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Style1_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
