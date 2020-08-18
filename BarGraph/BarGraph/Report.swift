//
//  Report.swift
//  BarGraph
//
//  Created by Kanz on 2020/08/18.
//

import Foundation

struct Report: Hashable {
    let year: String
    let revenus: Double
}

extension Report {
    static func all() -> [Report] {
        return [
            Report(year: "2001", revenus: 2500),
            Report(year: "2002", revenus: 4500),
            Report(year: "2003", revenus: 6500)
        ]
    }
}
