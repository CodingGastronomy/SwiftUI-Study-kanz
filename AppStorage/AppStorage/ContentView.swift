//
//  ContentView.swift
//  AppStorage
//
//  Created by Kanz on 2020/09/03.
//

import SwiftUI

struct Settings: Codable {
    let darkMode: Bool
    let name: String
}


struct ContentView: View {
    
    @AppStorage("settings")
    private var settingsData: Data = Data()
    
    @State private var output: String = ""
    
    
    var body: some View {
        VStack {
            
            Text(output)
                .padding()
            
            Button("Load Fron AppStorage") {
                guard let settings = try? JSONDecoder().decode(Settings.self, from: self.settingsData) else {
                    return
                }
                
                output = "isDarkMode: \(settings.darkMode)\n name: \(settings.name)"
            }
            
            Spacer()
                .frame(height: 20)
            
            Button("Save in AppStorage") {
                let settings = Settings(darkMode: true, name: "John")
                guard let settingData = try? JSONEncoder().encode(settings) else {
                    return
                }
                
                self.settingsData = settingData
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
