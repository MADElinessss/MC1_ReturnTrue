//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI


struct FivePage: View{
    @State private var isChecked = false
    
    var body: some View{
        HStack(spacing: 1){
            ScrollView(showsIndicators: false){
                leftRectangle(title: "Koong", price: "3,333,333", img: nil, company: nil, deliveryFee: "무료", personColor: "블루")
                leftRectangle(title: "Koong", price: "3,333,333", img: nil, company: nil, deliveryFee: "무료", personColor: "블루")
                leftRectangle(title: "Koong", price: "3,333,333", img: nil, company: nil, deliveryFee: "무료", personColor: "블루")
                Spacer().frame(height: 15)
            }
            
            
            
            VStack{
                
                VStack(spacing: 10){
                    HStack{
                        Text("총 상품금액")
                        Spacer()
                        Text("61,800원")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 20))
                    
                    HStack(alignment: .firstTextBaseline){
                        Text("총 배송비")
                        Spacer()
                        Text("+3,000원")
                            .fontWeight(.bold)
                    }
                    .padding(.vertical,12)
                    .font(.system(size: 20))
                    HStack{
                        Text("총 할인금액")
                        Spacer()
                        Text("-16.200원")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 20))
                    
                    
                    HStack{
                        Text("결제금액")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        Spacer()
                        Text("48,600원")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 32))
                    .padding(.top)
                }
                .padding(15)
                .background()
                .frame(maxWidth:.infinity)
                .cornerRadius(10)
                
                Button{} label: {
                    Text("3개 상품 구매하기")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .frame(height:70)
                .frame(maxWidth: .infinity)
                .background(Color.mainColor)
                .cornerRadius(10)
                .padding(.top,20)
                
                Spacer()
            }
            .frame(width: 400)
            .padding()
        }
        .background(Color.gamLightGray0)
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View{ FivePage()
    }
}
