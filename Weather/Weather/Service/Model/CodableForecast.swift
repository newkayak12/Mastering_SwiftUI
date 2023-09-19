//
//  CodableForecast.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import Foundation

struct CodableForecast: Codable {
    struct ListItem: Codable {
        let dt: Double
        struct Main: Codable {
            let temp: Double
            let temp_min: Double
            let temp_max: Double
        }
        
        let main: Main
        
        struct Weather: Codable {
            let description: String
            let icon : String
        }
        
        let weather: [Weather]
        
    }
    
    let list: [ListItem]
}
