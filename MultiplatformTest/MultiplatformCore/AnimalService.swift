//
//  AnimalService.swift
//  MultiplatformCore
//
//  Created by Kanz on 2020/08/27.
//

import Foundation

public class AnimalService {
    
    static func getAll() -> [Animal] {
        return [
            Animal(name: "Tiger", description: "This is tiger", image: "🐯"),
            Animal(name: "Rat", description: "This is rat", image: "🐭"),
            Animal(name: "Monkey", description: "This is monkey", image: "🐵"),
            Animal(name: "Cat", description: "This is cat", image: "🐱")
        ]
    }
}
