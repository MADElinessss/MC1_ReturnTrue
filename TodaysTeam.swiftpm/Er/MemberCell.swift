//
//  ScrollCell.swift
//  TodaysTeam
//
//  Created by moon on 2023/03/27.
//

import SwiftUI

struct MemberCell: View {
    
    var item: BestItemModel
    
    var company: String
    var title: String
    var discountRate: String
    var price: String
    var rate: String
    var reviews: String
    var img: Image
    var info: Person
    
    
    init(item: BestItemModel){
        self.item = item
        self.company = item.company
        self.title = item.title
        self.discountRate = item.discountRate
        self.price = item.price
        self.rate = item.rate
        self.reviews = item.reviews
        self.img = item.img
        self.info = item.info
    }
    
    
    var body: some View {
        VStack{
            HStack{
                if info != .none {
                    Image(uiImage: info.numsa.first!)
                        .resizable()
                        .frame(width:180, height: 180)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                else {
                   img
                        .resizable()
                        .frame(width:180, height: 180)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                
                VStack(alignment: .leading,spacing: 6) {
                    Text(self.company)
                        .font(.system(size: 18))
                        .foregroundColor(Color.gamDarkGray0)
                    Text("[한정수량] " + self.title)
                        .font(.system(size: 22))
                    HStack{
                        Text(self.discountRate + " ")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(Color.mainColor)
                        Text(self.price)
                            .font(.system(size: 36, weight: .bold))
                    }
                    HStack( alignment: .center, spacing: 0){
                        Image(systemName: "star")
                            .padding(.bottom, 4)
                        Text(self.rate + " ")
                            .font(.system(size: 16, weight: .bold))
                        Text("리뷰" + self.reviews)
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color.gamDarkGray0)
                    }
                    HStack{
                        Text("무료배송")
                            .padding(5)
                            .background(RoundedRectangle(cornerRadius: 6).fill(Color.gamLightGray1))
                        Text("특가")
                            .foregroundColor(Color.gamBgWhite)
                            .padding(5)
                            .background(RoundedRectangle(cornerRadius: 6).fill(.red.opacity(0.5)))
                    }
                }
                .padding(.leading, 16)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
        Divider()
    }
}

