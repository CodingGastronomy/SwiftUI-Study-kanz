//
//  LazyVGridDemoApp.swift
//  LazyVGridDemo
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

@main
struct LazyVGridDemoApp: App {
    
    @StateObject var store = MovieStore()

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
