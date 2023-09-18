//
//  WeatherContentView.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import SwiftUI

struct WeatherContentView: View {
    @EnvironmentObject var service: WeatherService
    
    var body: some View {
        VStack {
            Text(service.currentLocation ?? "")
                .font(.title2)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
            
            
            GeometryReader { reader in
                ScrollView(showsIndicators: false) {
                    VStack {
                        Spacer()
                        
                        CurrentWeatherView(model: .preview)
                    }
                    .frame(height: reader.size.height)
                    
                    Spacer(minLength: reader.safeAreaInsets.bottom)
                    
                    ForecastView()
                }
            }
        }
    }
}

struct WeatherContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherContentView()
            .preferredColorScheme(.dark)
            .environmentObject(WeatherService.preview)
    }
}
