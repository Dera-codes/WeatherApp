//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by MAC on 08/05/2024.
//

import SwiftUI

struct WeatherButton:View {
    var title:String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View {
            Text(title)
                .frame(width: 280, height: 50)
                .font(.system(size: 22))
                .fontWeight(.bold)
                .foregroundStyle(textColor)
                .background(backgroundColor)
                .cornerRadius(12)
                

    }
}

