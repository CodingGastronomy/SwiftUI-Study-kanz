//
//  NSManagedObjectContext+Extensions.swift
//  CoffeeApp
//
//  Created by Kanz on 2020/08/24.
//

import CoreData
import Foundation
import UIKit

extension NSManagedObjectContext {
    
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
