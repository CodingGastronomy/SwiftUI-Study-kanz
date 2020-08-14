//
//  UserSettings.swift
//  ObservableObject2
//
//  Created by Kanz on 2020/08/15.
//

import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject {
    @Published var score: Int = 0
}
