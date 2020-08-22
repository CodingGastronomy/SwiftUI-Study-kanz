//
//  ContentView.swift
//  FormTest
//
//  Created by Kanz on 2020/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTillTomorrow: Bool = false
    @State private var colorTemperature: Float = 0.0
    
    var body: some View {
        NavigationView {
            Form {
                
                FirstSection(scheduled: self.$scheduled)
                
                SeconeSection(manuallyEnabledTillTomorrow: self.$manuallyEnabledTillTomorrow)
                
                ThirdSection(colorTemperature: self.$colorTemperature)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FirstSection: View {
    @Binding var scheduled: Bool
    
    var body: some View {
        Section(header: Text("Night Shift automatically shifts the colors of your display to the warmer end of the color spectrum after dark. This may help you get a better night's sleep").padding(5.0).lineLimit(nil).textCase(nil)) {
            
            Toggle(isOn: $scheduled) {
                Text("Scheduled")
            }
            
            HStack {
                VStack {
                    Text("From")
                    Text("To")
                }
                
                Spacer()
                
                NavigationLink(destination: Text("Scheduled Settings")) {
                    VStack {
                        Text("Sunset")
                            .foregroundColor(.blue)
                        Text("Sunrise")
                            .foregroundColor(.blue)
                    }
                }.fixedSize()
                
            }
        }
    }
}

struct SeconeSection: View {
    @Binding var manuallyEnabledTillTomorrow: Bool
    
    var body: some View {
        Section(header: Text("")) {
            Toggle(isOn: self.$manuallyEnabledTillTomorrow) {
                Text("Manually Enable it till tomorrow")
            }
        }
    }
}

struct ThirdSection: View {
    @Binding var colorTemperature: Float
    
    var body: some View {
        Section(header: Text("COLOR TEMPERATURE").padding(5.0)) {
            
            HStack {
                Text("Less Warm")
                Slider(value: self.$colorTemperature)
                Text("More Warm")
            }
        }
    }
}
