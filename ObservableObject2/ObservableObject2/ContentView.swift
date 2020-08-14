//
//  ContentView.swift
//  ObservableObject2
//
//  Created by Kanz on 2020/08/15.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userSetting: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSetting.score)")
                .font(.largeTitle)
                .padding()
            
            Button("Increment Score") {
                self.userSetting.score += 1
            }
            
            FancyScoreView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}
