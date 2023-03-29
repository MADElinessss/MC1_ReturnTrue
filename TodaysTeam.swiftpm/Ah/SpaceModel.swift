//
//  SwiftUIView 2.swift
//  
//
//  Created by Kim SungHun on 2023/03/28.
//

import SwiftUI

struct SpaceModel: Identifiable {
    let id = UUID()
    let image: Image
}

let spaceEntitys = [
    SpaceModel(image: Image("chair1")),
    SpaceModel(image: Image("chair2")),
    SpaceModel(image: Image("desk1")),
    SpaceModel(image: Image("monitor1")),
    SpaceModel(image: Image("candy")),
    SpaceModel(image: Image("piltong")),
    SpaceModel(image: Image("tv1")),
    SpaceModel(image: Image("monitor1")),
    SpaceModel(image: Image("chair1")),
    SpaceModel(image: Image("tv1")),
    SpaceModel(image: Image("chair2")),
    SpaceModel(image: Image("monitor1"))
]
