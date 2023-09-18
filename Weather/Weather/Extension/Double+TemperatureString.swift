//
//  Double+Temperature.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import Foundation
fileprivate let formatter: MeasurementFormatter = {
   let f = MeasurementFormatter()
    f.numberFormatter.maximumFractionDigits = 0
    f.unitOptions = .temperatureWithoutUnit
    return f
}()


extension Double {
    var temeratureString: String {
        let temperatrue = Measurement<UnitTemperature> (value: self, unit: .celsius)
        
        return formatter.string(from: temperatrue)
    }
    
    static var randomTemperatureString: String {
        return Double.random(in:  -10 ... 30).temeratureString
    }
}
