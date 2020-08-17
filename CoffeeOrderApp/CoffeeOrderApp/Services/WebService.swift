//
//  WebService.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/16.
//

import Foundation

class WebService {
    
    // MARK: List
    func getAllOrders(completion: @escaping ([Order]?) -> Void) {
        guard let url = URL(string: "https://chambray-gabby-walrus.glitch.me/orders") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let result = try? JSONDecoder().decode([Order].self, from: data)
            DispatchQueue.main.async {
                completion(result)
            }
            
        }.resume()
    }
    
    // MARK: Create
    func createCoffeeOrder(order: Order, completion: @escaping (CreateOrderResponse?) -> Void) {
        guard let url = URL(string: "https://chambray-gabby-walrus.glitch.me/orders") else {
            fatalError("Invalid URL")
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(order)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let result = try? JSONDecoder().decode(CreateOrderResponse.self, from: data)
            DispatchQueue.main.async {
                completion(result)
            }
            
        }.resume()
    }
}
