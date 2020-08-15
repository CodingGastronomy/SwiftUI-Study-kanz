//
//  ContentView.swift
//  CurrentWeather
//
//  Created by Kanz on 2020/08/15.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherViewModel: WeatherViewModel
    
    init() {
        self.weatherViewModel = WeatherViewModel(weatherService: WeatherService())
    }
    
    var body: some View {
        VStack(alignment: .center) {
            
            TextField("Enter City Name", text: self.$weatherViewModel.cityName) {
                self.weatherViewModel.search()
            }
            .font(.custom("Arial", size: 50))
            .padding()
            .fixedSize()
            
            Text(self.weatherViewModel.temperature)
                .font(.custom("Arial", size: 100))
                .offset(y: 100)
                .foregroundColor(Color.white)
                .padding()
            
            // Text(self.weatherViewModel.humidity)
        }
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 0, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
