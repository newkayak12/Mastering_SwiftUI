//
//  Provider.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import Foundation
import WidgetKit


struct Provider:  TimelineProvider {
    
    
    
    func placeholder(in context: Context) -> WeatherEntry {
        WeatherEntry(widgetData: .preview)
    }
    
    func getSnapshot(in context: Context, completion: @escaping (WeatherEntry) -> ()) {
        let entry = WeatherEntry(widgetData: .preview)
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<WeatherEntry>) -> ()) {
        var entries: [WeatherEntry] = [WeatherEntry(widgetData: .preview)]
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
    
   
    
}
