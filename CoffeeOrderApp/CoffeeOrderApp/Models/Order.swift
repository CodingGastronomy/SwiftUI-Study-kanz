//
//  Order.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/16.
//

import Foundation

struct Order: Codable {
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
}
