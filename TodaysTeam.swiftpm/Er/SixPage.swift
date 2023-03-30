//
//  SwiftUIView.swift
//  
//
//  Created by moon on 2023/03/28.
//

import SwiftUI

let SoldMemberItem: [BestItemModel] = [
    BestItemModel(company: "잼몰", info: .zam, title: "잼", discountRate: "29%", price: "5,839,220", rate: "4.3", reviews: "302", img: Image("dog")),
    BestItemModel(company: "아지몰", info: .ahzy, title: "아지", discountRate: "23%", price: "4,338,290", rate: "4.6", reviews: "710", img: Image("eren")),
    BestItemModel(company: "키오몰", info: .kio, title: "키오", discountRate: "22%", price: "4,889,320", rate: "4.1", reviews: "328", img: Image("eren")),
    BestItemModel(company: "매들린몰", info: .madeline, title: "매들린", discountRate: "24%", price: "5,112,430", rate: "4.9", reviews: "238", img: Image("eren")),
    BestItemModel(company: "쿵몰", info: .koong, title: "쿵", discountRate: "28%", price: "4,490,230", rate: "4.2", reviews: "594", img: Image("eren")),
    BestItemModel(company: "에렌몰", info: .eren, title: "에렌", discountRate: "21%", price: "4,324,820", rate: "4.8", reviews: "328", img: Image("eren")),
]

struct SixPage: View {
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center) {
                HStack{
                    Image(systemName: "cart.fill")
                        .resizable()
                        .frame(width:33, height:30)
                    Text(" 결제")
                        .font(.system(size: 36, weight: .bold))
                }
                Image("final")
                VStack{
                    Text("주문완료!")
                        .font(.system(size: 40, weight: .bold))
                        .padding(.bottom)
                    Text("예쁘게 포장해서 보내드릴게요!")
                        .font(.system(size: 30, weight: .medium))
                    Text("조금만 기다려요 :)")
                        .font(.system(size: 30, weight: .medium))
                }
                .padding()
                // 버튼 두개
                HStack{
                    Button{} label: {
                        Text("주문 상세보기")
                            .font(.system(size: 36, weight: .medium))
                            .foregroundColor(Color.gamBasicBlack)
                    }
                    .frame(width: 280, height:70)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 48).fill(Color.gamLightGray0))
                    Button{} label: {
                        Text("쇼핑 계속하기")
                            .font(.system(size: 36, weight: .medium))
                            .foregroundColor(Color.gamBasicBlack)
                    }
                    .frame(width: 280, height:70)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 48).fill(Color.gamLightGray0))
                }
                
                Rectangle()
                    .fill(Color.gamLightGray0)
                    .frame(height:12)
                    .padding([.top, .bottom])
                
                Text("No.81821513231522293 (21.02.14)")
                    .font(.system(size: 24, weight: .medium))
                
                Rectangle()
                    .fill(Color.gamLightGray0)
                    .frame(height:12)
                    .padding([.top, .bottom])
                
                VStack{
                    HStack(alignment: .center, spacing: 4) {
                        Image("dog")
                            .resizable()
                            .frame(width:80, height:80)
                            .clipShape(Circle())
                            .padding()
                        
                        Text("98도씨")
                            .font(.system(size: 32, weight: .semibold))
                        Spacer()
                        Button{} label: {
                            Text("전화걸기")
                                .font(.system(size: 24, weight: .semibold))
                        }
                        .padding()
                        .padding(.horizontal,8)
                        .background(RoundedRectangle(cornerRadius: 48).fill(Color.gamLightGray0))
                    }
                    
                    Rectangle()
                        .fill(Color.gamLightGray0)
                        .frame(height:2)
                        .padding([.top, .bottom])
                    
                    Group{
                        ForEach(SoldMemberItem) { ele in
                            SoldMemberCell(item: ele)
                        }
                    }
                }
                    .padding(.horizontal, 24)
                
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SixPage()
    }
}
