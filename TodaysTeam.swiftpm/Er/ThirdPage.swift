//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI


struct RoundedCornersShape: Shape {
   let corners: UIRectCorner
   let radius: CGFloat
   
   func path(in rect: CGRect) -> Path {
       let path = UIBezierPath(roundedRect: rect,
                               byRoundingCorners: corners,
                               cornerRadii: CGSize(width: radius, height: radius))
       return Path(path.cgPath)
   }
}

struct BestItemModel : Identifiable {
    var id = UUID()
    
    var img: Image
    var company: String
    var title: String
    var discountRate: String
    var price: String
    var rate: String
    var reviews: String
    
    
    init(company: String, title: String, discountRate: String, price: String, rate: String, reviews: String, img: Image) {
        self.company = company
        self.title = title
        self.discountRate = discountRate
        self.price = price
        self.rate = rate
        self.reviews = reviews
        self.img = img
    }
}

let items: [BestItemModel] = [
    BestItemModel(company: "잼몰", title: "잼", discountRate: "29%", price: "5,839,220", rate: "4.3", reviews: "302", img: Image("dog")),
    BestItemModel(company: "아지몰", title: "아지", discountRate: "23%", price: "4,338,290", rate: "4.6", reviews: "710", img: Image("eren")),
    BestItemModel(company: "사람인", title: "자바러", discountRate: "20%", price: "988,220", rate: "4.8", reviews: "328", img: Image(systemName: "person")),
    BestItemModel(company: "키오몰", title: "키오", discountRate: "22%", price: "4,889,320", rate: "4.1", reviews: "328", img: Image("eren")),
    BestItemModel(company: "매들린몰", title: "매들린", discountRate: "24%", price: "5,112,430", rate: "4.9", reviews: "238", img: Image("eren")),
    BestItemModel(company: "에브리타임", title: "애플지원자", discountRate: "20%", price: "838,330", rate: "4.8", reviews: "328", img: Image(systemName: "person")),
    BestItemModel(company: "쿵몰", title: "쿵", discountRate: "28%", price: "4,490,230", rate: "4.2", reviews: "594", img: Image("eren")),
    BestItemModel(company: "링크드인", title: "백엔드1년차", discountRate: "20%", price: "322,790", rate: "4.8", reviews: "328", img: Image(systemName: "person")),
    BestItemModel(company: "에렌몰", title: "에렌", discountRate: "21%", price: "4,324,820", rate: "4.8", reviews: "328", img: Image("eren")),
    
]


struct ThirdPage: View {
    var body: some View {
        GeometryReader{ _ in
            VStack(alignment: .leading, spacing: 20){
                
                // 상단 두개 버튼
                HStack(spacing: 0){
                    Button{} label:{
                        Text("실시간 베스트")
                            .font(Font.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color.gamBgWhite)
                    }
                    .background(
                        RoundedCornersShape(corners: [.topLeft, .bottomLeft], radius: 4).fill(Color.mainColor)
                    )
                    Button{} label:{
                        Text("역대급 베스트")
                            .font(Font.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color.gamRealBlack)
                    }
                    .background(
                        RoundedCornersShape(corners: [.topRight, .bottomRight], radius: 4).fill(Color.gamBgWhite)
                    )
                }
                .overlay( RoundedRectangle(cornerRadius: 4).stroke(Color.gamLightGray1, lineWidth: 1) )
                .padding()
                
                Text("2023.03.31 14:00 기준")
                    .foregroundColor(Color.gamDarkGray1)
                    .padding(.leading, 20)
                
                
                ScrollView{
                    ForEach(items) { ele in
                        MemberCell(item: ele)
                    }
                }
                
            }
        }
        .background(Color.gamBgWhite)
    }
}
