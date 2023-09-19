//
//  WeatherWidgetBundle.swift
//  WeatherWidget
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import WidgetKit
import SwiftUI

@main
struct WeatherWidgetBundle: WidgetBundle {
    var body: some Widget {
        WeatherWidget()
        WeatherWidgetLiveActivity()
    }
}
