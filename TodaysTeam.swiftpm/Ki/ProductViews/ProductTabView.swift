//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct ProductTabView: View {
    
    @State var currentIndex: Int = 0
    var temp = 3

    var body: some View {
        TabView {
            ForEach(0..<temp) { i in
                ZStack {
                    Color.black
                    Text("Row: \(i)")  .foregroundColor(.white)
                }
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
            .padding(24)
        }
        .clipped()
    }
}

extension ProductTabView {
    
    func getIndex(_ currentOffet: CGFloat) -> Int {
        return Int(round(Double(currentOffet / UIScreen.main.bounds.width)))
    }
}
