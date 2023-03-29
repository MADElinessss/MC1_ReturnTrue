//
//  File 2.swift
//  
//
//  Created by 이승준 on 2023/03/28.
//

import SwiftUI

struct leftRectangle : View {
    @State private var isChecked = false
    
    var body : some View {
        
        VStack{
            VStack{
                Spacer()
                Text("ibizashop 배송")
                // 어떨때는 . , :
                    .font(.system(size: 20, weight: .bold, design: .rounded))
            }
            Rectangle()
                .frame(height: 3)
                .foregroundColor(.gamLightGray0)
            
            HStack(alignment:.top){
                VStack{
                    Image(systemName: isChecked ? "checkmark.square" : "checkmark.square.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:27)
                        .padding([.leading, .bottom], 15)
                        .foregroundColor(isChecked ? .gamDarkGray1 : . mainColor)
                        .onTapGesture {
                            isChecked.toggle()
                        }
                }
                
                VStack{
                    HStack(alignment:.top){
                        Image("MyImage")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                            .cornerRadius(10)
                        
                        Text("[ibiza] 접이식 빨래 양말건조대")
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.system(size: 24, weight: .regular, design: .rounded))
                            .padding()
                        Spacer()
                        Image(systemName: "x.square.fill")
                            .padding()
                        
                        
                        
                    }
                    
                    VStack{
                        VStack(spacing: 15){
                            HStack{
                                Text("화이트")
                                    .font(.system(size: 16))
                                Spacer()
                                Image(systemName: "x.square.fill")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gamDarkGray1)
                            }
                            HStack{
                                Text("1명")
                                Spacer()
                                Text("8,900원")
                            }
                        }
                        .padding()
                        .background(Color.gamLightGray0)
                        
                        HStack{
                            Text("옵션변경")
                            Text("바로구매")
                            Spacer()
                            Text("8,900원")
                                .font(.system(size: 25, weight: .bold))
                        }
                        .padding(.vertical)
                    }
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                }
                
            }
            .padding(.top, 10)
            .padding(.trailing)
            
            Rectangle()
                .frame(height: 3)
                .foregroundColor(Color.gamLightGray0)
            VStack(spacing:6){
                Text("배송비 3,000원")
                Text("묶음배송 상품 61,100원 추가시 무료배송")
                Text("묶음배송 상품 추가하기 > ")
                    .font(.system(size:16, weight: .bold))
                    .foregroundColor(Color.mainColor)
            }
            .padding(.bottom, 10)
        }
        
        .frame(maxWidth: .infinity, maxHeight: 500)
        .background(.white)
        .cornerRadius(10)
        .padding([.top, .leading, .trailing], 15)
        
        
        
        
    }
    
}


