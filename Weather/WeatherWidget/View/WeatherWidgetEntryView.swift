//
//  WeatherEntryView.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import SwiftUI
import WidgetKit

struct WeatherWidgetEntryView : View {
    var entry: Provider.Entry
    
    var body: some View {
        ZStack {
            LinearGradient (colors: [
                Color(red: 4/255, green: 7/255, blue: 24/255),
                Color(red: 39/255, green: 54/255, blue: 80/255),
            ], startPoint: .topTrailing, endPoint: .bottomLeading)
            
            VStack(alignment: .leading) {
                Text(entry.widgetData.location)
                Text(entry.widgetData.temperature)
                    .font(.largeTitle)
                
                Spacer()
                
                Image(systemName: entry.widgetData.icon)
                    .symbolRenderingMode(.multicolor)
                    .font(.subheadline)
                
                Text(entry.widgetData.weather)
                    .font(.subheadline)
                
                Text("최고: \(entry.widgetData.maxTemperature) 최저: \(entry.widgetData.minTemperature)")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct WeatherWidgetEntryView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWidgetEntryView(entry: Provider.Entry(widgetData: .preview))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
