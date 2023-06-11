//
//  TopInfoBar.swift
//  iOS9
//
//  Created by Beket Muratbek on 10.06.2023.
//

import SwiftUI
import CoreTelephony

struct TopInfoBar: View {
    @State var signalStrength = 0
    @State var hour = 0
    @State var minute = 0
    @State var time = ""
    @State var batteryLevel = 0
    var body: some View {
        ZStack {
            HStack {
    //            Text("Signal strength: \(signalStrength)")
                SignalStrengthView()
                Spacer()
                TimeView(time: $time)
                    .padding(.trailing, batteryLevel == 100 ? 38 : 61)
                Spacer()
                HStack(spacing: 2.5) {
                    Text("\(batteryLevel)%")
                        .font(.system(size: 14, weight: .medium, design: .default))
                    Image(systemName: "battery.0")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 12)
                }
                .foregroundColor(Color.white)
            }
            .frame(width: UIScreen.main.bounds.width)
//            .background(Color.black)
            .onAppear {
                //getSignalStrength()
                getCurrentTime()
                getBatterylevel()
            }
//            Rectangle()
//                .frame(width: 1)
//                .foregroundColor(Color.red)
        }
    }
    
    func getCurrentTime() {
        let date = Date()
//        let calendar = Calendar.current
//        let hour = calendar.component(.hour, from: date)
//        let minute = calendar.component(.minute, from: date)
//        DispatchQueue.main.async {
//            self.hour = hour
//            self.minute = minute
//        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        time = dateFormatter.string(from: date)
    }
    
    func getBatterylevel() {
        UIDevice.current.isBatteryMonitoringEnabled = true
        batteryLevel = Int(UIDevice.current.batteryLevel*100)
        print(UIDevice.current.batteryLevel)
        print(batteryLevel)
    }
    
//    func getSignalStrength() {
//        let telephonyInfo = CTTelephonyNetworkInfo()
//        if let signalStrength = telephonyInfo.serviceCurrentRadioAccessTechnology?[CTRadioAccessTechnologyGPRS],
//           let dBm = telephonyInfo.value(forKeyPath: "signalStrength") as? Int {
//            self.signalStrength = dBm
//        }
//    }
}

struct TopInfoBar_Previews: PreviewProvider {
    static var previews: some View {
        TopInfoBar()
    }
}

struct SignalStrengthView: View {
    var body: some View {
        HStack {
            HStack(spacing: 2) {
                Image(systemName: "circle.fill")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 8, height: 8)
                Image(systemName: "circle.fill")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 8, height: 8)
                Image(systemName: "circle.fill")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 8, height: 8)
                Image(systemName: "circle")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 8, height: 8)
                Image(systemName: "circle")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 8, height: 8)
            }
            Text("Tele2")
                .font(.system(size: 14, weight: .medium, design: .default))
                .padding(.trailing, 2)
                .padding(.leading, -2)
            Image(systemName: "wifi")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 17.5, height: 17.5)
        }
        .foregroundColor(Color.white)
    }
}

struct TimeView: View {
    @Binding var time: String
    var body: some View {
        HStack {
            //                Text("\(hour):\(minute)")
            Text(time)
                .font(.system(size: 14, weight: .bold, design: .default))
                .foregroundColor(Color.white)
        }
    }
}
