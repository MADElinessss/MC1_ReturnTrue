//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI
import AVFoundation


struct ProductTabView: View {
    
    let images: [UIImage]
    @State var currentIndex: Int = 0
    var temp = 3
//    let player: AVPlayer = {
//        let temp = URL(string: "http://동영상주소.com")!
//       // let url = URL(filePath: "/Users/changgyoseo/Projects/MC1_act2/TodaysTeam.swiftpm/Ki/Dance.mp4")
////        if #available(iOS 16.0, *) {
////            guard let url = URL(filePath: "/Users/changgyoseo/Projects/MC1_act2/TodaysTeam.swiftpm/Ki/Dance.mp4") else {
////                fatalError("Failed to find video file.")
////            }
//        //}
//    
//        return AVPlayer(url: temp)
//    }()
    var b: Bool = false
    
    var body: some View {
//        if b {
//            VideoPlayerView(player: player)
//        }
//        else {
            TabView {
                ForEach(0..<temp) { i in
                    Image(uiImage: images[i])
                        .clipShape(Rectangle())
                        .overlay {
                            GeometryReader { proxy -> Color in
                                let minX = proxy.frame(in: .global).minX
                                self.currentIndex = getIndex(-minX)
                                
                                return Color.clear
                            }
                        }
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 1000)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .overlay {
                VStack {
                    Spacer()
                    ZStack {
                        Capsule(style: .circular)
                            .fill(.white.opacity(0.5))
                            .frame(width: 100, height: 50)
                        Text("\(currentIndex + 1) / \(temp)")
                            .foregroundColor(.gamBgWhite)
                    }
                }
                .frame(height: 550)
                .padding(24)
            }
            .frame(height: 600)
            .clipped()
      //  }
    }
}


extension ProductTabView {
    
    func getIndex(_ currentOffet: CGFloat) -> Int {
        return Int(round(Double(currentOffet / UIScreen.main.bounds.width)))
    }
}

