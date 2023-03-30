//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

struct ProductDetailView: View {
    
    let person: Person
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    ProductTabView(images: person.numsa)
                        .frame(height: 600)
                    ProductTitleView()
                        .frame(width: UIScreen.main.bounds.width)
                    ProductDescriptionView(styles: person.styles)
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
