//
//  SwiftUIView.swift
//  
//
//  Created by moon on 2023/03/30.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        VStack{
            if self.isActive {
                NavigationView {
                    TabView {
                        HomeImageView()
                            .tabItem {
                                Label("홈", systemImage: "house")
                            }
                        HomeView()
                            .tabItem {
                                Label("둘러보기", systemImage: "doc.on.doc")
                            }
                        ShoppingView()
                            .tabItem {
                                Label("쇼핑", systemImage: "basket")
                            }
                        ProfView()
                            .tabItem {
                                Label("전문업체찾기", systemImage: "person.2.badge.gearshape.fill")
                            }
                        ProfileView()
                            .badge(1)
                            .tabItem {
                                Label("마이페이지", systemImage: "person")
                            }
                    }
                    .font(.footnote)
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationViewStyle(StackNavigationViewStyle())
            } else{
                Text("Splash Screen")
            }
            
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}
