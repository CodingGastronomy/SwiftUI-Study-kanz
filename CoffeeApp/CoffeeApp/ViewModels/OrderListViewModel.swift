//
//  OrderListViewModel.swift
//  CoffeeApp
//
//  Created by Kanz on 2020/08/24.
//

import CoreData
import Combine
import Foundation
import SwiftUI

class OrderListViewModel: ObservableObject {
    @Published var orders: [OrderViewModel] = []
    
    init() {
        fetchAllOrders()
    }
    
    func fetchAllOrders() {
        self.orders = CoreDataManager.shared.getAllOrders()
            .map(OrderViewModel.init)
        print(self.orders)
    }
    
    func deleteOrder(_ orderVM: OrderViewModel) {
        CoreDataManager.shared.deleteOrder(name: orderVM.name)
        fetchAllOrders()
    }
}

/// 
class OrderViewModel {
    var name: String = ""
    var type: String = ""
    
    init(order: Order) {
        self.name = order.name ?? ""
        self.type = order.type ?? ""
    }
}
