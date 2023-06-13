//
//  PhotosAppIconView.swift
//  iOS9
//
//  Created by Beket Muratbek on 13.06.2023.
//

import SwiftUI

struct PhotosAppIconView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.white
//                Image(systemName: "capsule.portrait.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 18, height: 40)
//                    .position(x: 35, y: 52.5)
//                    .rotationEffect(Angle(degrees: 0.0))
//                    .foregroundColor(Color.blue.opacity(0.4))
                Rectangle()
                    .frame(width: 18, height: 35)
                    .cornerRadius(10)
                    .position(x: 35, y: 47)
                    .foregroundColor(Color.blue.opacity(0.4))
                    .rotationEffect(Angle(degrees: 0.0))
                
//                Rectangle()
//                    .frame(width: 18, height: 35)
//                    .cornerRadius(10)
//                    .position(x: 35, y: 45)
////                    .foregroundColor(Color.green.opacity(0.8))
//                    .foregroundColor(Color(red: 0.15, green: 0.75, blue: 0.5, opacity: 0.6))
//                    .rotationEffect(Angle(degrees: -45.0))
                
                Rectangle()
                    .frame(width: 18, height: 32.5)
                    .cornerRadius(10)
                    .position(x: 35, y: 50)
                    .foregroundColor(Color.green.opacity(0.45))
                    .rotationEffect(Angle(degrees: -90.0))
                
                Rectangle()
                    .frame(width: 18, height: 32.5)
                    .cornerRadius(10)
                    .position(x: 35, y: 50)
//                    .foregroundColor(Color.green.opacity(0.8))
                    .foregroundColor(Color(red: 0.15, green: 0.75, blue: 0.5, opacity: 0.6))
                    .rotationEffect(Angle(degrees: -45.0))
                
                Rectangle()
                    .frame(width: 18, height: 32.5)
                    .cornerRadius(10)
                    .position(x: 35, y: 50)
                    .foregroundColor(Color.yellow.opacity(0.6))
                    .rotationEffect(Angle(degrees: -135.0))
                
                Rectangle()
                    .frame(width: 18, height: 32.5)
                    .cornerRadius(10)
                    .position(x: 35, y: 50)
                    .foregroundColor(Color.orange.opacity(0.6))
                    .rotationEffect(Angle(degrees: 180.0))
                
                Rectangle()
                    .frame(width: 18, height: 32.5)
                    .cornerRadius(10)
                    .position(x: 35, y: 50)
                    .foregroundColor(Color.red.opacity(0.7))
                    .rotationEffect(Angle(degrees: 135.0))
                
                Rectangle()
                    .frame(width: 18, height: 32.5)
                    .cornerRadius(10)
                    .position(x: 35, y: 50)
                    .foregroundColor(Color.pink.opacity(0.5))
                    .rotationEffect(Angle(degrees: 90.0))
                
                Rectangle()
                    .frame(width: 18, height: 32.5)
                    .cornerRadius(10)
                    .position(x: 35, y: 50)
                    .foregroundColor(Color.purple.opacity(0.55))
                    .rotationEffect(Angle(degrees: 45.0))
            }
            .frame(width: 70, height: 70)
            //                    .background(Color.white)
            .cornerRadius(15)
            Text("Photos")
        }
//        .padding(.all, 100)
//        .background(Color.blue)
    }
}

struct PhotosAppIconView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosAppIconView()
    }
}
