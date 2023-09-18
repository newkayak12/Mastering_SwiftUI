//
//  String+WeatherSymbol.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import Foundation
extension String {
    var weatherImageName: String {
        switch self {
            case "01d":
                return "sun.max.fill"
            case "01n":
                return "moon.fill"
            case "02d":
                return "cloud.sun.fill"
            case "02n":
                return "cloud.moon.fill"
            case "03d", "03n" :
                return "cloud.fill"
            case "04d", "04n" :
                return "smoke.fill"
            case "09d", "09n" :
                return "cloud.rain.fill"
            case "10d":
                return "cloud.sun.rain.fill"
            case "10n":
                return "cloud.moon.rain.fill"
            case "11d", "11n" :
                return "cloud.bolt.rain.fill"
            case "13d", "13n" :
                return "snowflake"
            case "50d", "50n" :
                return "humidity"
            default:
                return "circle"
                
        }
    }
}
