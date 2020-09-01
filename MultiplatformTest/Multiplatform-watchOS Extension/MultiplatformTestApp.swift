//
//  MultiplatformTestApp.swift
//  Multiplatform-watchOS Extension
//
//  Created by Kanz on 2020/08/26.
//

import SwiftUI

@main
struct MultiplatformTestApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
