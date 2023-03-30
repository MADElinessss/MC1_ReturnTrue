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
    
    var info: Person
    var img: Image
    var company: String
    var title: String
    var discountRate: String
    var price: String
    var rate: String
    var reviews: String
    var field: String
    
    var bbororoImg: Image
    
    
    init(company: String, info: Person, title: String, discountRate: String, price: String, rate: String, reviews: String, img: Image, field: String, bbororoImg: Image) {
        self.company = company
        self.title = title
        self.discountRate = discountRate
        self.price = price
        self.rate = rate
        self.reviews = reviews
        self.img = img
        self.info = info
        self.field = field
        
        self.bbororoImg = bbororoImg
    }
}


let items: [BestItemModel] = [
    BestItemModel(company: "잼몰", info: .zam, title: "살다살다 이렇게 메모하는사람 처음봄 쨈", discountRate: "63%", price: "라멘 베라보", rate: "4.3", reviews: "302", img: Image("dog"), field: "디자인", bbororoImg: Image("zam_bbororo")),
    BestItemModel(company: "아지몰", info: .ahzy, title: "★[AZHY]★당충전스윗F남✓ ★대구풀코스★획득기회@@", discountRate: "10%", price: "콜로세움 테라 500cc 2잔", rate: "4.6", reviews: "710", img: Image("eren"), field: "개발", bbororoImg: Image("azhy_bbororo")),
BestItemModel(company: "키오몰", info: .kio, title: "MC2 찢는 래퍼출신 개크리더 키오", discountRate: "99%", price: "에비앙", rate: "4.1", reviews: "328", img: Image("eren"), field: "개발", bbororoImg: Image("kio_bbororo")),
    BestItemModel(company: "매들린몰", info: .madeline, title: "눈치 100 영어 통역관 마들렌 아니고 매들린", discountRate: "38%", price: "효자동 쌀국수 식사 1번", rate: "4.9", reviews: "238", img: Image("eren"), field: "개발", bbororoImg: Image("mad_bbororo")),
    BestItemModel(company: "쿵몰", info: .koong, title: "맑눈광 교환환불X 쿵 예뻐해주세요]", discountRate: "0.1%", price: "소주 한 잔", rate: "4.2", reviews: "594", img: Image("eren"), field: "도메인", bbororoImg: Image("koong_bbororo")),
    BestItemModel(company: "에렌몰", info: .eren, title: "순정남 스윗가이와 달데를, 진짜웃음추출가능", discountRate: "55%", price: "에렌과 일일데이트권", rate: "4.8", reviews: "328", img: Image("eren"), field: "개발", bbororoImg: Image("eren_bbororo")),
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
                        NavigationLink(destination:  ProductDetailView(person: ele.info)) {
                            MemberCell(item: ele)
                        }
                        .foregroundColor(.black)
                    }
                }
            }
        }
        .background(Color.gamBgWhite)
    }
}
