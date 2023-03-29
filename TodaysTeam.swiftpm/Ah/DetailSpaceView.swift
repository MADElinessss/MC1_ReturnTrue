//
//  File.swift
//
//
//  Created by changgyo seo on 2023/03/27.
//

// 1. 프로필 이미지
// 2. 유저 닉네임 + 올린 시간

import SwiftUI

struct DetailSpaceView: View {
    
    @ViewBuilder
    var uploadUserInformation: some View {
        HStack() {
            Circle()
                .fill(Color.mainColor)
                .frame(width: 50, height: 50)
                .padding(.trailing, 10)
            VStack (alignment: .leading, spacing: 2) {
                Text("김성훈")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.black)
                Text("17시간")
                    .font(.system(size: 15))
                    .foregroundColor(Color.gamDarkGray1)
            }
            Spacer()
            Button(action: {
                print("add button tapped")
            }, label: {
                Text("팔로우")
                    .frame(width: 100, height: 35)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color.white)
                    .padding(.bottom, 7)
            })
            .background(Color.mainColor)
            .cornerRadius(8)
        }
        .padding([.leading, .trailing, .top], 10)
    }
    
    @ViewBuilder
    var spaceInformation: some View {
        HStack {
            Text("40평대")
                .foregroundColor(Color.gamDarkGray0)
            Divider()
                .frame(height: 10)
                .foregroundColor(Color.gamDarkGray0)
            Text("모던 스타일")
                .foregroundColor(Color.gamDarkGray0)
            Divider()
                .frame(height: 10)
                .foregroundColor(Color.gamDarkGray0)
            Text("아파트")
                .foregroundColor(Color.gamDarkGray0)
            Spacer()
        }
        .padding([.leading, .trailing], 10)
    }
    
    @ViewBuilder
    func bottomStatusBar() -> some View {
        VStack {
            Spacer()
            Rectangle()
                .fill(.white)
                .frame(height: 80)
                .opacity(1.0)
                .overlay(
                    HStack {
                        Spacer()
                        HStack {
                            Image(systemName: "heart")
                                .font(.system(size: 30))
                                .foregroundColor(Color.gamDarkGray2)
                            Text("4")
                                .font(.system(size: 20))
                                .foregroundColor(Color.gamDarkGray2)
                        }
                        Group {
                            Spacer()
                            Spacer()
                        }
                        HStack {
                            Image(systemName: "bookmark")
                                .font(.system(size: 30))
                                .foregroundColor(Color.gamDarkGray2)
                            Text("3")
                                .font(.system(size: 20))
                                .foregroundColor(Color.gamDarkGray2)
                        }
                        Group {
                            Spacer()
                            Spacer()
                        }
                        HStack {
                            Image(systemName: "message")
                                .font(.system(size: 30))
                                .foregroundColor(Color.gamDarkGray2)
                            Text("5")
                                .font(.system(size: 20))
                                .foregroundColor(Color.gamDarkGray2)
                        }
                        Group {
                            Spacer()
                            Spacer()
                        }
                        HStack {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 30))
                                .foregroundColor(Color.gamDarkGray2)
                            Text("1")
                                .font(.system(size: 20))
                                .foregroundColor(Color.gamDarkGray2)
                        }
                        Spacer()
                    }
                )
        }
    }
    
    @ViewBuilder
    var MainImage: some View {
        ZStack {
            Image("image3")
                .resizable()
                .frame(height: 1000)
            //                    .scaledToFill()
            
            Circle()
                .frame(width: 30, height: 30)
                .overlay(
                    NavigationLink(destination: ThirdPage()) {
                        Image(systemName: "plus")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                    }
                )
                .padding(.leading, 500)
            
            Circle()
                .frame(width: 30, height: 30)
                .overlay(
                    NavigationLink(destination: ThirdPage()) {
                        Image(systemName: "plus")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                    }
                )
                .padding([.leading, .bottom], 300)
            
            Circle()
                .frame(width: 30, height: 30)
                .overlay(
                    NavigationLink(destination: ThirdPage()) {
                        Image(systemName: "plus")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                    }
                )
                .padding([.trailing, .bottom], 500)
            
            Circle()
                .frame(width: 30, height: 30)
                .overlay(
                    NavigationLink(destination: ThirdPage()) {
                        Image(systemName: "plus")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                    }
                )
                .padding([.trailing, .top], 300)
        }
    }
    
    @ViewBuilder
    var SpaceObjects: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(spaceEntitys) { entitys in
                    entitys.image
                        .resizable()
                        .cornerRadius(10.0)
                        .frame(width: 100, height: 100)
                }
            }
        }
        .padding()
    }
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    uploadUserInformation
                    HorizontalDivider(color: Color.gamBgWhite.opacity(1), height: 15)
                    spaceInformation
                    MainImage
                    SpaceObjects
                }
            }
            .padding(.bottom, 80)
            bottomStatusBar()
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}
