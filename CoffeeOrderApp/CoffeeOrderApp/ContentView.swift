//
//  ContentView.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderListViewModel = OrderListViewModel(webService: WebService())
    @State private var showModal: Bool = false
    var body: some View {
        NavigationView {
            OrderListView(orders: self.orderListViewModel.orders)
                .navigationTitle("Coffee Orders")
                .navigationBarItems(leading: Button(action: reloadOrders) {
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(Color.white)
                    
                }, trailing: Button(action: showAddCoffeeOrderView) {
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
                })
                .sheet(isPresented: self.$showModal, content: {
                    AddCoffeeOrderView(isPresented: self.$showModal)
                })
        }.ignoresSafeArea(.all)
    }
    
    
    private func reloadOrders() {
        self.orderListViewModel.fetchOrders()
    }
    
    private func showAddCoffeeOrderView() {
        self.showModal = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

