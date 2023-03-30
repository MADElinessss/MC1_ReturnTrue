//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct SetNavigaitonBar: ViewModifier {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    func body(content: Content) -> some View {
        content
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 25, weight: .light))
                    .imageScale(.medium)
                    .frame(width: 40, height: 40)
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: dummy()){
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .light))
                        .imageScale(.medium)
                        .frame(width: 40, height: 40)
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "arrow.backward")
                    .foregroundColor(.black)
                    .font(.system(size: 25, weight: .light))
                    .imageScale(.medium)
                    .frame(width: 40, height: 40)
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "house")
                    .foregroundColor(.black)
                    .font(.system(size: 25, weight: .light))
                    .imageScale(.medium)
                    .frame(width: 40, height: 40)
            }
        }
    }
    
}
