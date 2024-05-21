//
//  ContentView.swift
//  WeatherApp
//
//  Created by MAC on 04/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor:isNight ? .black : .blue,
                           bottomColor:isNight ? .white : Color("lightBlue"))
            
            VStack{
                
                CityTextView(cityName: "Lagos, NG")
                
                MainWeatherStatusView(imageName:isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 76)
           
                
                HStack(spacing: 20) {
                    WeatherDayView(daysOfWeek: "TUE",
                                   imageName: "cloud.sun.fill", temperature: 74)
                    
                    WeatherDayView(daysOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 86)
                    
                    WeatherDayView(daysOfWeek: "THU",
                                   imageName: "cloud.rain.fill",
                                   temperature: 30)
                    
                    WeatherDayView(daysOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                    temperature: 60)
                    
                    WeatherDayView(daysOfWeek: "SAT",
                                   imageName: "cloud.bolt.rain.fill",
                                    temperature: 25)
                  
                    
                }
                Spacer()
                
                Button(action: {isNight.toggle()}, label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)

                })
                Spacer()
            }
           
      
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var daysOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(daysOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
                .padding(.bottom, 120)
        }
    }
}

struct BackgroundView: View {
    
    var topColor:Color
    var bottomColor:Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName:String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}


struct MainWeatherStatusView: View {
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
            
            
            Text("\(temperature)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

