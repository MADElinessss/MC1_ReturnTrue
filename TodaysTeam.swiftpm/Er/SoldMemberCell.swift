//
//  SwiftUIView.swift
//  
//
//  Created by moon on 2023/03/28.
//

import SwiftUI

struct SoldMemberCell: View {
    var item: BestItemModel
    var title: String
    var price: String
    var img: Image
    
    init(item: BestItemModel) {
        self.item = item
        self.title = item.title
        self.price = item.price
        self.img = item.img
    }
    
    var body: some View {
        HStack {
            self.img
                .resizable()
                .frame(width:100, height:100)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack(alignment: .leading) {
                Text(self.title)
                    .font(.system(size: 24, weight: .semibold))
                    .padding(.bottom, 3)
                Text("1개")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(Color.gamDarkGray0)
            }
                .padding(.leading)
            Spacer()
            VStack(alignment: .trailing, spacing: 8){
                Text("결제완료")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color.green)
                Text(self.price)
                    .font(.system(size: 20, weight: .semibold))
            }
        }
    }
}

