//
//  SettingsViewModel.swift
//  UserDefaultsTest
//
//  Created by Kanz on 2020/08/25.
//

import Foundation

class SettingsViewModel: ObservableObject {
    @Published var isOn: Bool = UserDefaults.standard.bool(forKey: "isOn") {
        didSet {
            UserDefaults.standard.set(self.isOn, forKey: "isOn")
        }
    }
}
