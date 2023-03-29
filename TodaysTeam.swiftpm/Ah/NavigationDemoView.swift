//
//  SwiftUIView 2.swift
//  
//
//  Created by Kim SungHun on 2023/03/28.
//

import SwiftUI

struct NavigationDemoView: View {
    var body: some View {
        NavigationView {
            NavigationLink (
                destination: DetailSpaceView()
                    .navigationBarItems(trailing: Image(systemName: "ellipsis"))
            ) {
                Text("Hello World")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
