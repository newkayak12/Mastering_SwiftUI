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
        var data = WidgetData.preview
        
        if !context.isPreview {
            let list = WidgetData.read()
            if !list.isEmpty {
                data = list[0]
            }
        }
        
        let entry = WeatherEntry(widgetData: data )
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<WeatherEntry>) -> ()) {
        let entries = WidgetData.read().map {
            WeatherEntry(widgetData: $0)
        }
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
    
   
    
}
