//
//  SwiftUIView.swift
//  WeatherApp
//
//  Created by MAC on 04/05/2024.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Button(action: {
                   // Action to perform when button is tapped
                   print("Button tapped!")
               }) {
                   Text("Tap Me")
                       .font(.title) // Set font size
                       .padding() // Add padding around text
                       .foregroundColor(.white) // Set text color
                       .background(Color.blue) // Set background color
                       .cornerRadius(10) // Apply corner radius
                       .shadow(color: .gray, radius: 3, x: 1, y: 2) // Apply shadow
               }
               .frame(width: 150, height: 50) // Set button size
    }
}

#Preview {
    SwiftUIView()
}
