//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

enum Style: Identifiable {
    
    case style1
    case style2
    case style3
    case style4
    case style5
    case style6
    case style7
    case style8
    case style9
    case style10
    case style13
}

extension Style {
    
    var id: Int {
        switch self {
        case .style1:
            return 1
        case .style2:
            return 2
        case .style3:
            return 3
        case .style4:
            return 4
        case .style5:
            return 5
        case .style6:
            return 6
        case .style7:
            return 7
        case .style8:
            return 8
        case .style9:
            return 9
        case .style10:
            return 10
        default:
            return 11
        }
    }
    
    @ViewBuilder
    var view: some View {
        VStack {
            switch self {
            case .style1:
                Style1(images: [UIImage(named: "Image")!], title: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk")
            case .style3:
                Style3(images: [UIImage(named: "Image")!], title: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk")
            case .style5:
                Style5(title: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk", subTitle: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk")
            case .style6:
                Style6(images: [UIImage(named: "Image")!])
            case .style7:
                Style7(title: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk")
            case .style9:
                Style9(images: [UIImage(named: "Image")!], title: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk", subTitle: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk")
            case .style13:
                Style13(title: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk")
            case .style10:
                Style10(title: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk", subTitle: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk")
            default:
                Style1(images: [UIImage(named: "Image")!], title: "sdkljaflkdsjvlkxcjvlkajlkzxjlvkjlqjfdklazjvlxzk")
            }
        }
    }
}
