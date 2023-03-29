//
//  SwiftUIView.swift
//  
//
//  Created by 신정연 on 2023/03/27.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    
    var cellHeights = [150, 200, 250, 180]
    
    var columns : [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        //검색창+북마크+카트(버튼)
        NavigationView {
            VStack{
                HStack{
                    SearchBar(text: $searchText)
                        .padding(.leading, 25)
                        .padding(.trailing, 10)
                    Image(systemName: "bookmark")
                        .font(.system(size: 25, weight: .light))
                        .imageScale(.medium)
                        .frame(width: 40, height: 40)
                    NavigationLink(destination: CartView()){
                        Image(systemName: "cart")
                            .foregroundColor(.black)
                            .font(.system(size: 25, weight: .light))
                            .imageScale(.medium)
                            .frame(width: 40, height: 40)
                            .padding(.trailing, 20)
                        //Spacer()
                    }
                }
                //뷰페이저 -> 일단은 이미지로 붙여요
                HStack{
                    Image("menu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                ScrollView{
                    HStack(spacing: 10){
                        VStack{
                            ForEach(Array(leftCards.enumerated()), id: \.element){
                                offset, card in
                                CardView(card: card)
                                    .frame(height: offset % 3 == 0 ? 400 : offset % 3 == 1 ? 300 : 500)
                                    .padding(.all, 15)
                            }
                        }
                        VStack{
                            ForEach(Array(rightCards.enumerated()), id : \.element){
                                offset, card in
                                CardView(card: card)
                                    .frame(height: offset % 3 == 0 ? 500 : offset % 3 == 1 ? 300 : 400)
                                    .padding(.all, 15)
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Card : Hashable {
    let title: String
    let imgName: String
}
//예시 더미 데이터 -> 장소 사진으로 변경
let leftCards: [Card] = [
    .init(title: "Main Lab", imgName: "img1"),
    .init(title: "지곡회관", imgName: "img2"),
    .init(title: "Colab Lab", imgName: "img4"),
    .init(title: "Main Lab", imgName: "img6"),
    
]

let rightCards: [Card] = [
    .init(title: "Main Lab", imgName: "img5"),
    .init(title: "지곡회관", imgName: "img4"),
    .init(title: "Colab Lab", imgName: "img3"),
    .init(title: "Main Lab", imgName: "img6"),
    
]

struct CardView: View{
    let card : Card
    var body: some View{
        NavigationLink(destination: Text(card.title)) {
            GeometryReader{
                proxy in
                VStack{
                    Image(card.imgName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        .clipped()
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).fill(Color(.white).opacity(0)))
                    
                    Text(card.title)
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .multilineTextAlignment(.leading)
                    
                }
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
}

