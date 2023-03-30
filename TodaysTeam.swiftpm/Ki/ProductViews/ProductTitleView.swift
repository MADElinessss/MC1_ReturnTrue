//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct ProductTitleView: View {
    
        var brandName: String = "프리메이드"
        var productName: String = "원형 티 카페 테이블 2size"
        var discountPercent: Int = 50
        var price: Int = 10
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(brandName)
                        .font(.system(size: 24, weight: .regular, design: .rounded))
                        .foregroundColor(.gamDarkGray1)
                    Text(productName)
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
                Text("\(discountPercent)%")
                    .font(.system(size: 24, weight: .regular, design: .rounded))
                    .foregroundColor(.gamDarkGray0)
                Text("1,000,000,000,000원")
                    .font(.system(size: 24, weight: .regular, design: .rounded))
                    .foregroundColor(.gamLightGray2)
                    .strikethrough()
                Spacer()
            }
            Spacer()
            HStack {
                Text("\(price)원")
                    .font(.system(size: 32, weight: .semibold, design: .rounded))
                Spacer()
            }
        }
        .padding(.leading,40)
        .padding(.trailing,40)
    }
}
