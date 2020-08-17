//
//  OrderListViewModel.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/16.
//

import Foundation
import Combine

class OrderListViewModel: ObservableObject {
    @Published var orders: [OrderViewModel] = []
    
    let webService: WebService
    
    init(webService: WebService) {
        self.webService = webService
        fetchOrders()
    }
    
    func fetchOrders() {
        webService.getAllOrders { orders in
            if let orders = orders {
                self.orders = orders.map(OrderViewModel.init)
            }
        }
    }
    
}


class OrderViewModel {
    
    let id = UUID()
    
    let order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    var name: String {
        return self.order.name
    }
    
    var size: String {
        return self.order.size
    }
    
    var coffeeName: String {
        return self.order.coffeeName
    }
    
    var total: Double {
        return self.order.total
    }
}
