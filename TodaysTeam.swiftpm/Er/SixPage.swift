//
//  SwiftUIView.swift
//  
//
//  Created by moon on 2023/03/28.
//

import SwiftUI



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
                        Image("soju")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:80, height:80)
                            .clipShape(Circle())
                            .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.gamLightGray1, lineWidth: 2))
                            .padding()
                        
                        Text("리턴트루 꿀조합")
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
                        ForEach(items) { ele in
                            SoldMemberCell(item: ele, img: ele.bbororoImg)
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
