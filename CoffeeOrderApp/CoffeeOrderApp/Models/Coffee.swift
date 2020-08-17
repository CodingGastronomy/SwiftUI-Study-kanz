//
//  Coffee.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/16.
//

import Foundation

struct Coffee {
    let name: String
    let imageURL: String
    let price: Double
}

extension Coffee {
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Americano", imageURL: "americano", price: 2.5),
            Coffee(name: "Latte", imageURL: "latte", price: 3.5),
            Coffee(name: "Cold Brew", imageURL: "coldbrew", price: 4.0)
        ]
    }
}
