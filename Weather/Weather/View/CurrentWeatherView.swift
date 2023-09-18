//
//  CurrentWeatherView.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import SwiftUI

struct CurrentWeatherView: View {
    let model: CurrentWeather
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: model.icon)
                Text(model.weather)
            }
            .font(.largeTitle)
            
            HStack(spacing: 20) {
                Label(model.maxTemperature, systemImage: "arrow.up")
                Label(model.minTemperature, systemImage: "arrow.down")
            }
            
            HStack(alignment: .lastTextBaseline) {
                Text(model.temperature)
                    .font(.system(size: 120))
                    .fontWeight(.ultraLight)
                .minimumScaleFactor(0.8)
                
                Spacer()
                HStack {
                    Image(systemName: "sunrise.fill")
                        .renderingMode(.original)
                    Text(model.sunrise)
                    Image(systemName: "sunset.fill")
                        .renderingMode(.original)
                    Text(model.sunset)
                }
                .font(.caption)
                
            }
        }
        .foregroundColor(.white)
        .padding(.horizontal)
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(model: CurrentWeather.preview)
    }
}