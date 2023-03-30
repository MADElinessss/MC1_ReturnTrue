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
                        .frame(height: 600)
                    ProductTitleView()
                        .frame(width: UIScreen.main.bounds.width)
                    ProductDescriptionView(styles: Style.kio)
                        .padding(50)
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
