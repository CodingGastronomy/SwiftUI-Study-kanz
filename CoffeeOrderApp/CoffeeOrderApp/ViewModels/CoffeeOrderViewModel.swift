//
//  CoffeeOrderViewModel.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/17.
//

import Foundation

class CoffeeOrderViewModel: ObservableObject {
    
    private let webService: WebService
    
    var coffeeList: [CoffeeViewModel] {
        return Coffee.all().map(CoffeeViewModel.init)
    }
    
    init(webService: WebService) {
        self.webService = webService
    }
    
    var name: String = ""
    @Published var size: String = "Medium"
    @Published var coffeeName: String = ""
    
    var total: Double {
        return calculateTotalPrice()
    }
    
    private func calculateTotalPrice() -> Double {
        let coffeeViewModel = coffeeList.first { $0.name == coffeeName }
        if let coffeeViewModel = coffeeViewModel {
            return coffeeViewModel.price * priceForSize()
        } else {
            return 0
        }
    }
     
    private func priceForSize() -> Double {
        let prices: [String: Double] = [
            "Small": 2.0,
            "Medium": 3.0,
            "Large": 4.0
        ]
        return prices[self.size]!
    }
    
    func placeOrder() {
        
        let order = Order(name: self.name, size: self.size, coffeeName: self.coffeeName, total: self.total)
        self.webService.createCoffeeOrder(order: order) { response in
            if let response = response, response.success == true {
                
            }
        }
    }
}
