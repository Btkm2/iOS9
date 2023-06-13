//
//  MainPageAppsView.swift
//  iOS9
//
//  Created by Beket Muratbek on 10.06.2023.
//

import SwiftUI
import Foundation

struct MainPageAppsView: View {
    @State var DayOfWeek = ""
    @State var date_of_day = ""
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var Apps = ["messages": "phone", "calendar": "calendar", ]
    var body: some View {
//        LazyVGrid(columns: columns) {
//            ForEach
//        }
        VStack {
            HStack (spacing: 22.5) {
                MessagesAppIconView()
                
//                VStack {
//                    Image(systemName: "message.fill")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .foregroundColor(Color.white)
//                        .frame(width: 40, height: 40)
//                        .padding(.all, 15)
//                        .background(Color.green)
//                        .foregroundColor(Color.white)
//                    .cornerRadius(15)
//                    Text("Calendar")
//                }
                CalendarAppIconView()
                
                PhotosAppIconView()
                
                CameraAppIconView()
                
//                Image(systemName: "message.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(Color.white)
//                    .frame(width: 40, height: 40)
//                    .padding(.all, 15)
//                    .background(Color.green)
//                    .foregroundColor(Color.white)
//                    .cornerRadius(15)
//
//                Image(systemName: "message.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(Color.white)
//                    .frame(width: 40, height: 40)
//                    .padding(.all, 15)
//                    .background(Color.green)
//                    .foregroundColor(Color.white)
//                    .cornerRadius(15)
            }
        }
        .background(Color.blue)
    }
    
    func getDayOfWeekAndDate() {
        let date = Date()
        let dateformatter_day_of_week = DateFormatter()
        dateformatter_day_of_week.dateFormat = "EEEE"
        DispatchQueue.main.async {
            DayOfWeek = dateformatter_day_of_week.string(from: date)
        }
        let dateformatter_date = DateFormatter()
        dateformatter_date.dateFormat = "dd"
        DispatchQueue.main.async {
            date_of_day = dateformatter_date.string(from: date)
        }
    }
}

struct MainPageAppsView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageAppsView()
    }
}

struct MessagesAppIconView: View {
    var body: some View {
        VStack {
            Image(systemName: "message.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.white)
                .frame(width: 55, height: 55)
                .padding(.all, 8)
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(15)
//                .padding([.trailing], 100)
//                .border(Color.yellow)
            Text("Messages")
        }
    }
}
