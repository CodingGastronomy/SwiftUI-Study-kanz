//
//  ContentView.swift
//  UserDefaultsTest
//
//  Created by Kanz on 2020/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false
    @ObservedObject var settingsVM = SettingsViewModel()
    
    var body: some View {
        VStack(alignment: .center) {
            Toggle(isOn: self.$settingsVM.isOn) {
                Text("")
            }
            .fixedSize()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(self.$settingsVM.isOn.wrappedValue ? Color.green : Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
