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
    
    struct Info {
        var brandName: String = "프리메이드"
        var productName: String = "원형 티 카페 테이블 2size"
        var discountPercent: String = "50"
        var before: String = ""
        var price: String = "10"
    }
    
    var info: Info {
        switch self {
        case .madeline:
            return Info(brandName: "서울시 강동구 천호동", productName: "마들렌 아니고 매들린입니다.", discountPercent: "0%", before: "950,000원", price: "효자동 쌀국수 식사 1번")
        case .kio:
            return Info(brandName: "인천광역시 계양구 계산동", productName: "이거다! 서창교", discountPercent: "100%", before: "25원", price: "소주 한방울")
        case .ahzy:
            return Info(brandName: "대구광역시 중구 남산동", productName: "엉춘", discountPercent: "0%", before: "1000원", price: "콜로세운 테라 500cc 2잔")
        case .eren:
            return Info(brandName: "애플아카데미", productName: "에렌", discountPercent: "55%", before: "5,555,555원", price: "에렌과 일일데이트 일회권")
        case .zam:
            return Info(brandName: "쌍문동", productName: "쨈", discountPercent: "63%", before: "물회", price: "라멘 베라보")
        case .koong:
            return Info(brandName: "세종특별시 고운동", productName: "믿고 쓰셔도 됩니다.[단, 교환 환불 X]", discountPercent: "0.1%", before: "", price: "소주한잔")
        default:
            return Info()
        }
    }
    
    var styles: [Style] {
        switch self {
        case .madeline:
            return Style.Madeline
        case .kio:
            return Style.kio
        case .ahzy:
            return Style.ahzy
        case .eren:
            return Style.eren
        case .zam:
            return Style.zam
        default:
            return Style.kio
        }
    }
    
    var numsa: [UIImage] {
        switch self {
        case .madeline:
            return [UIImage(named: "m1")!,UIImage(named: "m3")!,UIImage(named: "m2")!]
        case .kio:
            return [UIImage(named: "k1")!,UIImage(named: "k2")!,UIImage(named: "k3")!]
        case .ahzy:
            return [UIImage(named: "a1")!,UIImage(named: "a2")!,UIImage(named: "a3")!]
        case .eren:
            return [UIImage(named: "e1")!,UIImage(named: "e2")!,UIImage(named: "e3")!]
        case .zam:
            return [UIImage(named: "z1")!,UIImage(named: "z2")!,UIImage(named: "z3")!]
        default:
            return [UIImage(named: "m1")!,UIImage(named: "m3")!,UIImage(named: "m2")!]
        }
    }
}
