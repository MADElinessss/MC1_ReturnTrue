import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {

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
    }
}
