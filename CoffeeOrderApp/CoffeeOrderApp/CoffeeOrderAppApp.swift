//
//  CoffeeOrderAppApp.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/16.
//

import SwiftUI

@main
struct CoffeeOrderAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    self.configureAppearance()
                }
        }
    }
    
    
    private func configureAppearance() {
        UINavigationBar.appearance().backgroundColor = UIColor(displayP3Red: 165/255, green: 94/255, blue: 234/255, alpha: 1.0)
        UINavigationBar.appearance().largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
    }
    
}
