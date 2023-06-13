//
//  ContentView.swift
//  iOS9
//
//  Created by Beket Muratbek on 10.06.2023.
//

import SwiftUI

struct MainPageView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(edges: .all)
//            Image("iOS9")
//                .resizable()
//                .renderingMode(.original)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.9)
            VStack {
                TopInfoBar()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.8)
            .border(Color.white)
            .background {
                Image("iOS9")
                    .resizable()
                    .renderingMode(.original)
//                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
