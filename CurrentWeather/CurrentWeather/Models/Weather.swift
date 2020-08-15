//
//  Weather.swift
//  CurrentWeather
//
//  Created by Kanz on 2020/08/15.
//

import Foundation
import SwiftUI

/*
 "main": {
     "temp": 280.32,
     "pressure": 1012,
     "humidity": 81,
     "temp_min": 279.15,
     "temp_max": 281.15
   },
 */
struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
    
    enum CodingKeys: String, CodingKey {
        case temp
        case humidity
    }
}

struct WeatherResponse: Decodable {
    let weather: Weather
    
    enum CodingKeys: String, CodingKey {
        case weather = "main"
    }
}
