//
//  CodableCurrentWeather.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import Foundation
struct CodableCurrentWeather: Codable {
    let dt: Double
    
    struct Weather: Codable {
        let description: String
        let icon: String
    }
    
    let weather: [Weather]
    
    struct Main: Codable {
        let temp: Double
        let temp_min: Double
        let temp_max: Double
    }
    
    let main: Main
    
    struct Sys: Codable {
        let sunrise: Double
        let sunset: Double
    }
    
    let sys: Sys
}
