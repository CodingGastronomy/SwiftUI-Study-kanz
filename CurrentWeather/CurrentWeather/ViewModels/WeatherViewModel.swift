//
//  WeatherViewModel.swift
//  CurrentWeather
//
//  Created by Kanz on 2020/08/15.
//

import Foundation
import Combine

class WeatherViewModel: ObservableObject {
    
    private var weatherService: WeatherService
    
    @Published var weather = Weather()
    
    init(weatherService: WeatherService) {
        self.weatherService = WeatherService()
    }
    
    var temperature: String {
        if let temp = self.weather.temp {
            return String(format: "%.0f", temp)
        } else {
            return ""
        }
    }
    
    var humidity: String {
        if let humidity = self.weather.humidity {
            return String(format: "%.0f", humidity)
        } else {
            return ""
        }
    }
    
    var cityName: String = ""
    
    func search() {
        print(self.cityName)
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchWeather(by: city)
        }
    }
    
    private func fetchWeather(by city: String) {
        self.weatherService.getWeather(city: city) { weather in
            if let weather = weather {
                DispatchQueue.main.async {                
                    self.weather = weather
                }
            }
        }
    }
}
