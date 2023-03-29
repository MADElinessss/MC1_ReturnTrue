//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct ProductTitleView: View {
    
    //    var brandName: String
    //    var productName: String
    //    var starsCount: Int
    //    var reviewCount: Int
    //    var price: Int
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("프리메이드")
                        .font(.system(size: 24, weight: .regular, design: .rounded))
                        .foregroundColor(.gamDarkGray1)
                    Text("원형 티 카페 테이블 2size")
                        .font(.system(size: 36, weight: .regular, design: .rounded))
                        .foregroundColor(.gamBasicBlack)
                }
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .frame(width: 30, height: 30)
               
            }
            HStack {
                Text("38%")
                    .font(.system(size: 24, weight: .regular, design: .rounded))
                    .foregroundColor(.gamDarkGray0)
                Text("60000")
                    .font(.system(size: 24, weight: .regular, design: .rounded))
                    .foregroundColor(.gamLightGray2)
                    .strikethrough()
                Spacer()
            }
            Spacer()
            HStack {
                Text("36,900원")
                    .font(.system(size: 32, weight: .semibold, design: .rounded))
                Spacer()
            }
        }
        .padding(32)
        
    }
}
