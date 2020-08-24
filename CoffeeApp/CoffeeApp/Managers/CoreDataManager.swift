//
//  CoreDataManager.swift
//  CoffeeApp
//
//  Created by Kanz on 2020/08/24.
//

import Foundation
import CoreData

final class CoreDataManager {
    
    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    
    var moc: NSManagedObjectContext
    
    private init(moc: NSManagedObjectContext) {
        self.moc = moc
    }
    
    // MARK: -
    func saveOrder(name: String, type: String) {
        
        let order = Order(context: self.moc)
        order.name = name
        order.type = type
        
        do {
            try self.moc.save()
        } catch {
            print(error)
        }
    }
    
    // MARK: -
    func getAllOrders() -> [Order] {
        var orders: [Order] = []
        
        let orderRequest: NSFetchRequest<Order> = Order.fetchRequest()
        
        do {
            orders = try self.moc.fetch(orderRequest)
        } catch {
            print(error)
        }
        
        return orders
    }
    
    func fetchOrder(name: String) -> Order? {
        var orders: [Order] = []
        
        let orderRequest: NSFetchRequest<Order> = Order.fetchRequest()
        orderRequest.predicate = NSPredicate(format: "name == %@", name)
        
        do {
            orders = try self.moc.fetch(orderRequest)
        } catch {
            print(error)
        }
        
        return orders.first
    }
    
    // MARK: -
    
    func deleteOrder(name: String) {
        
        do {
            if let order = fetchOrder(name: name) {
                self.moc.delete(order)
                try self.moc.save()
            }
        } catch {
            print(error)
        }
    }
}
