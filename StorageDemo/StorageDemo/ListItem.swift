//
//  ListItem.swift
//  StorageDemo
//
//  Created by Kanz on 2020/09/02.
//

import Foundation

struct ListItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    var items: [ListItem]?
}

extension ListItem {
    static func all() -> [ListItem] {
        let animals = [
            ListItem(name: "🐶"),
            ListItem(name: "🐯")
        ]
        
        let fruits = [
            ListItem(name: "🍇"),
            ListItem(name: "🍒"),
            ListItem(name: "🍌")
        ]
        
        let cars = [
            ListItem(name: "🚗"),
            ListItem(name: "🚕"),
            ListItem(name: "🚙"),
            ListItem(name: "🚌"),
            ListItem(name: "🚓")
        ]
        
        return [
            ListItem(name: "Animals", items: animals),
            ListItem(name: "Fruits", items: fruits),
            ListItem(name: "Cars", items: cars)
        ]
    }
}
