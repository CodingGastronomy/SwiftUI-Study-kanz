//
//  Dish.swift
//  Binding
//
//  Created by Kanz on 2020/08/13.
//

import Foundation

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let isSpicy: Bool
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "ABCDEFG", imageURL: "a1", isSpicy: true),
            Dish(name: "가나다라마바", imageURL: "b1", isSpicy: false),
            Dish(name: "asdkfjas;dfk", imageURL: "c1", isSpicy: true)
        ]
    }
}
