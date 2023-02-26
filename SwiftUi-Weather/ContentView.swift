//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by Junaed Muhammad Chowdhury on 9/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack(spacing: 8) {
                TodayWeatherView(cityName: "Cupertino, CA",
                                 weatherStatusImage: isNight ? "moon.fill" : "cloud.sun.fill",
                                 temparature: 76)
                
                Spacer()
                
                HStack{
                    Spacer()
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temparature: 76)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.fog.fill", temparature: 86)
                    WeatherDayView(dayOfWeek: "Thus", imageName: "cloud.sun.rain.fill", temparature: 70)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.bolt.fill", temparature: 65)
                    WeatherDayView(dayOfWeek: "Sat", imageName: "sun.max.fill", temparature: 60)
                }

                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButtonView(title: "Change Date Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temparature: Int
    
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium))
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temparature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
        Spacer()
    }
}

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}


struct TodayWeatherView: View {
    var cityName: String
    var weatherStatusImage: String
    var temparature: Int
    
    var body: some View{
        VStack(spacing: 8) {
            Text(cityName)
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white )
                .padding()
                
            Image(systemName: weatherStatusImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                
            Text("\(temparature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


