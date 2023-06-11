//
//  MainPageAppsView.swift
//  iOS9
//
//  Created by Beket Muratbek on 10.06.2023.
//

import SwiftUI

struct MainPageAppsView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var Apps = ["messages": "phone", "calendar": "calendar", ]
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach
        }
    }
}

struct MainPageAppsView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageAppsView()
    }
}
