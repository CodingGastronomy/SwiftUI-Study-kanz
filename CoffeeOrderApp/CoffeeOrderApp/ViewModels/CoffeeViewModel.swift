//
//  CoffeeViewModel.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/17.
//

import Foundation

class CoffeeListViewModel {
    var coffeeList: [CoffeeViewModel] = []
}

class CoffeeViewModel {
    
    var coffee: Coffee
    
    init(coffee: Coffee) {
        self.coffee = coffee
    }
    
    var name: String {
        self.coffee.name
    }
    
    var price: Double {
        self.coffee.price
    }
    
    var imageURL: String {
        self.coffee.imageURL
    }
}
