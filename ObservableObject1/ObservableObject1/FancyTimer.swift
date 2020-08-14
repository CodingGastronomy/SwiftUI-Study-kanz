//
//  FancyTimer.swift
//  ObservableObject1
//
//  Created by Kanz on 2020/08/15.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject {
    @Published var value: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
}
