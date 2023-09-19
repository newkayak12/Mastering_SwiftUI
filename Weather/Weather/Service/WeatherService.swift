//
//  WeatherService.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import Foundation
import CoreLocation

class WeatherService: NSObject, ObservableObject {
    
    static let apiKey = "8a3a2598d2b2a82d075ccf075f831126"

    let locationManager: CLLocationManager
    
    @Published var currentLocation: String?
    
    @Published var currentWeather: CurrentWeather?
    
    @Published var forecastList: [Forecast]?
    
    @Published var lastError: String?
    
    @Published var updating: Bool
    
    let isPreviewService: Bool
    
    init(preview: Bool = false) {
        isPreviewService = preview
        updating = false
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        
        super.init()
        
        locationManager.delegate = self
    }
    
    static var preview: WeatherService {
        let service = WeatherService(preview: true)
        service.currentLocation = "강남"
        service.currentWeather = CurrentWeather.preview
        service.forecastList = Forecast.preview
        
        return service
    }
    
    func fetch() {
        guard !isPreviewService else { return }
        
        updating = true
        
        print("NOT PREVIEW")
        switch locationManager.authorizationStatus {
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .authorizedAlways, .authorizedWhenInUse:
                locationManager.requestLocation()
            case .denied, .restricted:
                lastError = "위치 서비스 사용 권한이 없습니다."
                updating = false
            default:
                lastError = "알 수 없는 오류가 발생했습니다."
                updating = false
        }
        
        
        
    }
    
}
