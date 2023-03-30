//
//  File.swift
//  
//
//  Created by changgyo seo on 2023/03/30.
//

import UIKit

enum Person {
    case madeline
    case ahzy
    case eren
    case koong
    case zam
    case kio
    case none
}

extension Person {
    var styles: [Style] {
        switch self {
        case .madeline:
            return Style.Madeline
        case .kio:
            return Style.kio
        default:
            return Style.kio
        }
    }
    
    var numsa: [UIImage] {
        switch self {
        case .madeline:
            return [UIImage(named: "m1")!,UIImage(named: "m3")!,UIImage(named: "m2")!]
        case .kio:
            return [UIImage(named: "m1")!,UIImage(named: "m3")!,UIImage(named: "m2")!]
        default:
            return [UIImage(named: "m1")!,UIImage(named: "m3")!,UIImage(named: "m2")!]
        }
    }
}
