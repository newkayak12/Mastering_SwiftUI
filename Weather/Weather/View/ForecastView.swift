//
//  ForecastView.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import SwiftUI

struct ForecastView: View {
    @EnvironmentObject var service: WeatherService
    
    var body: some View {
        ForEach(service.forecastList ?? []) { forecast in
            HStack {
                VStack(alignment: .leading) {
                    Text(forecast.date)
                        .font(.caption)
                    Text(forecast.time)
                        .font(.caption)
                }
                
                Spacer()
                
                Image(systemName: forecast.icon)
                    .symbolRenderingMode(.multicolor)
                    .font(.title3)
                    
                
                Text(forecast.weather)
                    .font(.title3)
                
                Spacer()
                Text(forecast.temperature)
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .frame(minWidth: 70, alignment: .trailing)
            }
            .foregroundColor(.white)
            .padding(.horizontal)
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ForecastView()
            
        }
        .preferredColorScheme(.dark)
        .environmentObject(WeatherService.preview)
    }
}
