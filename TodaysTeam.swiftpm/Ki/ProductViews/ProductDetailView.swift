//
//  ProductDetailView.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI


struct ProductDetailView: View {
    
    var body: some View {
        NavigationView {
            VStack{
                ProductTabView()
                ProductTitleView()
            }
            .modifier(SetNavigaitonBar())
        }
        .navigationBarBackButtonHidden()
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

