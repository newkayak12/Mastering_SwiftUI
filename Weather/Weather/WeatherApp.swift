//
//  WeatherApp.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import SwiftUI

@main
struct WeatherApp: App {
    let service = WeatherService()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .preferredColorScheme(.dark)
                .environmentObject(service)
        }
    }
}
