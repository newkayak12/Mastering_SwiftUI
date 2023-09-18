//
//  MainView.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var service: WeatherService
    
    var body: some View {
        ZStack {
           BackgroundView()
            
           WeatherContentView()
        }
        .onAppear {
            service.fetch()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(WeatherService.preview)
    }
}
