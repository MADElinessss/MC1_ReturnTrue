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
