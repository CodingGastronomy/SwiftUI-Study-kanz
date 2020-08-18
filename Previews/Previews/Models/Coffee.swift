//
//  Coffee.swift
//  Previews
//
//  Created by Kanz on 2020/08/18.
//

import Foundation

struct Coffee: Hashable, Identifiable {
    var id = UUID()
    let name: String
    let imageURL: String
    let price: Double
}

extension Coffee {
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Americano", imageURL: "americano", price: 2500),
            Coffee(name: "Latte", imageURL: "latte", price: 3500),
            Coffee(name: "Cold Brew", imageURL: "coldbrew", price: 4000),
            Coffee(name: "Americano", imageURL: "americano", price: 2500),
            Coffee(name: "Latte", imageURL: "latte", price: 3500),
            Coffee(name: "Cold Brew", imageURL: "coldbrew", price: 4000)
        ]
    }
}
