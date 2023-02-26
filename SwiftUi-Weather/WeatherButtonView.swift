//
//  WeatherButtonView.swift
//  SwiftUi-Weather
//
//  Created by Junaed Muhammad Chowdhury on 25/2/23.
//

import SwiftUI

struct WeatherButtonView: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10.0)
    }
}

struct WeatherButtonView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherButtonView(title: "Change Date Time", textColor: .blue, backgroundColor: .white)
    }
}
