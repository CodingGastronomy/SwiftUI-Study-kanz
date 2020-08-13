//
//  Task.swift
//  AddingList
//
//  Created by Kanz on 2020/08/13.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let name: String
}

extension Task {
    static func all() -> [Task] {
        return []
    }
}
