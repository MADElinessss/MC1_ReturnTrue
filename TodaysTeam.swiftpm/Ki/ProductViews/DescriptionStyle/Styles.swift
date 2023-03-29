//
//  File.swift
//
//
//  Created by changgyo seo on 2023/03/28.
//

import SwiftUI

enum Style: Identifiable {
    
    case style1(image: String, title: String)
    case style2(image: String, title: String)
    case style3(image: String)
    case style4(image: [String])
    case style5(title: String, subtTitle: String)
    case style6(image: String)
    case style7(title: String)
    case style8(image: String, title: String, subTitle: String)
    case style9(image: String, title: String, subTitle: String)
    case style10(title: String, subTitle: String)
    case style11(image: String, title: String)
    case style12(image: [String])
    case style13(title: String)
    case style14(image: String)
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
        case .style11:
            return 10
        case .style12:
            return 10
        case .style13:
            return 10
        case .style14:
            return 10
        }
    }
    
    @ViewBuilder
    var view: some View {
        VStack {
            switch self {
                
            case .style1(let image, let title):
                Style1(images: [UIImage(named: image)!], title: title)
                
            case .style2(let image, let title):
                Style2(images: [UIImage(named: image)!], title: title)
                
            case .style3(let image):
                Style3(images: [UIImage(named: image)!])
                
            case .style4(let image):
                Style4(images: [UIImage(named: image[0])!,UIImage(named: image[1])!,UIImage(named: image[2])!])
                
            case .style5(let title, let subTitle):
                Style5(title: title, subTitle: subTitle)
                
            case .style6(let image):
                Style6(images: [UIImage(named: image)!])
                
            case .style7(let title):
                Style7(title: title)
                
            case .style8(let image, let title, let subTitle):
                Style8(images: [UIImage(named: image)!], title: title, subTitle: subTitle)
                
            case .style9(let image, let title, let subTitle):
                Style9(images: [UIImage(named: image)!], title: title, subTitle: subTitle)
                
            case .style10(let title, let subTitle):
                Style10(title: title, subTitle: subTitle)
                
            case .style11(let image, let title):
                Style11(images: [UIImage(named: image)!], title: title)
                
            case .style12(let image):
                Style12(images: [UIImage(named: image[0])!, UIImage(named: image[1])!])
                
            case .style13(let title):
                Style13(title: title)
                
            case .style14(let image):
                Style14(images: [UIImage(named: image)!])
                
            default:
                Color.clear
            }
        }
    }
}
