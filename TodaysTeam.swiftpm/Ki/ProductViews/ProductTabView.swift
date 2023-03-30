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
    var b: Bool = false
    
    var body: some View {

            TabView {
                ForEach(0..<temp) { i in
                    if b && i == 0 {
                        AVPlayerView(player: AVPlayer(url: Bundle.main.url(forResource: "Dance", withExtension: "mp4")!))
                    }
                    if temp != 4 {
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
    }
}


extension ProductTabView {
    
    func getIndex(_ currentOffet: CGFloat) -> Int {
        return Int(round(Double(currentOffet / UIScreen.main.bounds.width)))
    }
}

