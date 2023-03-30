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
                    let b = person == .ahzy ? true : false
                    let t = b ? 4 : 3
                    ProductTabView(images: person.numsa, temp: t, b: b)
                        .frame(height: 600)
                    ProductTitleView(info: person.info)
                        .frame(width: UIScreen.main.bounds.width)
                    ProductDescriptionView(styles: person.styles)
                        .frame(width: UIScreen.main.bounds.width)
                      
                    Spacer()
                }
            }
            .modifier(SetNavigaitonBar())
            
        }
        .navigationBarBackButtonHidden()
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
