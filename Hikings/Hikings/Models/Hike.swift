//
//  Hike.swift
//  Hikings
//
//  Created by Kanz on 2020/08/12.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Mountain Baekdu", imageURL: "beakdu", miles: 6),
            Hike(name: "Jeju Hallasan", imageURL: "halla", miles: 5.8),
            Hike(name: "Jirisan Mountain", imageURL: "jiri", miles: 5)
        ]
    }
}
