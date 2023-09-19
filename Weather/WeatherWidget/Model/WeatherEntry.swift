//
//  WeatherEntry.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import Foundation
import WidgetKit

struct WeatherEntry: TimelineEntry {
    let widgetData: WidgetData
    
    var date: Date {
        widgetData.date
    }
}
