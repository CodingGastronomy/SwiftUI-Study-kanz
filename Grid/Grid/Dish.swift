//
//  Dish.swift
//  Grid
//
//  Created by Kanz on 2020/08/13.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
}

extension Dish {
    static func all(_ count: Int = 20) -> [Dish] {
        var results: [Dish] = []
        let images: [String] = ["a1", "b1", "c1"]
        
        for i in 0..<count {
            let name = "Dish \(i)"
            let price = Double.random(in: 0...100)//Int.random(in: 0...100)
            let randomIndex = Int.random(in: 0..<images.count)
            let imageURL = images[randomIndex]
            
            let dish = Dish(name: name, price: price, imageURL: imageURL)
            results.append(dish)
        }
        
        return results
    }
}
