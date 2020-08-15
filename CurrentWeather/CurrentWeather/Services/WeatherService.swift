//
//  WeatherService.swift
//  CurrentWeather
//
//  Created by Kanz on 2020/08/15.
//

import Foundation

class WeatherService {
    
    func getWeather(city: String, completion: @escaping (Weather?) -> (Void)) {
        
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(Constants.serviceKey)") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.weather
                completion(weather)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
