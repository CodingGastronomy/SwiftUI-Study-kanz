//
//  ContentView.swift
//  AppStorageTest
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

struct ContentView: View {
     
    @AppStorage("isDarkMode") // UserDefaults
    private var isDarkMode: Bool = false
    
    var body: some View {
        VStack {
            Text(isDarkMode ? "DARK" : "LIGHT")
            
            Toggle(isOn: self.$isDarkMode) {
                Text("Select Mode")
            }
            .fixedSize()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
