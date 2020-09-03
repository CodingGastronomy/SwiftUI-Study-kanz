//
//  ContentView.swift
//  AppStatus
//
//  Created by Kanz on 2020/09/03.
//

import SwiftUI

struct ContentView: View {
    
    @State private var stockName: String = "ENE"
    @State private var stockPrice: Double?
    
    var body: some View {
        VStack {
            Text(self.stockName)
                .font(.largeTitle)
                .padding()
            
            Text(stockPrice != nil ? String(format: "$%.2f", stockPrice!) : "")
        }
        .onAppear {
            // updateStockPrice()
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            updateStockPrice()
        }
    }
    
    private func updateStockPrice() {
        stockPrice = Double.random(in: 0...1.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
