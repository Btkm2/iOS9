//
//  CameraAppIconView.swift
//  iOS9
//
//  Created by Beket Muratbek on 13.06.2023.
//

import SwiftUI

struct CameraAppIconView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.gray
                Image(systemName: "camera.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            }
            .frame(width: 70, height: 70)
            .cornerRadius(15)
            Text("Camera")
        }
    }
}

struct CameraAppIconView_Previews: PreviewProvider {
    static var previews: some View {
        CameraAppIconView()
    }
}
