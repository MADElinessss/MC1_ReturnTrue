//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct ProductTitleView: View {
    
        
    var info: Person.Info
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(info.brandName)
                        .font(.system(size: 24, weight: .regular, design: .rounded))
                        .foregroundColor(.gamDarkGray1)
                    Text(info.productName)
                        .font(.system(size: 36, weight: .regular, design: .rounded))
                        .foregroundColor(.gamBasicBlack)
                    HStack {
                        Text("⭐️⭐️⭐️⭐️⭐️")
                        Text("1,234")
                    }
                }
               
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Rectangle().frame(height: 20).foregroundColor(.clear)
            HStack {
                Text("\(info.discountPercent)")
                    .font(.system(size: 24, weight: .regular, design: .rounded))
                    .foregroundColor(.gamDarkGray0)
                Text(info.price)
                    .font(.system(size: 24, weight: .regular, design: .rounded))
                    .foregroundColor(.gamLightGray2)
                    .strikethrough()
                Spacer()
            }
            Spacer()
            HStack {
                Text(info.price)
                    .font(.system(size: 32, weight: .semibold, design: .rounded))
                Spacer()
            }
        }
        .padding(.leading,40)
        .padding(.trailing,40)
    }
}
