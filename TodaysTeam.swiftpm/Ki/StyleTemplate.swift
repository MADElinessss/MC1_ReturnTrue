//
//  StyleTemplate.swift//
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

protocol StyleTemplate: View {
    
    var images: [UIImage]? { get set }
    var title: String? { get set }
    var subTitle: String? { get set }
    var color: Color? { get set }
    
}
