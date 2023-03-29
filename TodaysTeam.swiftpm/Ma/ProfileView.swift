//
//  SwiftUIView.swift
//  
//
//  Created by 신정연 on 2023/03/29.
//

import SwiftUI

struct ProfileView: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack{
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
