//
//  ContentView.swift
//  CoffeeApp
//
//  Created by Kanz on 2020/08/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderListVM: OrderListViewModel
    @State private var isPresentAddOrderView: Bool = false
    
    init() {
        self.orderListVM = OrderListViewModel()
    }
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(self.orderListVM.orders, id: \.name) { order in
                    HStack {
                        Image(order.type)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                        
                        Text(order.name)
                            .font(.largeTitle)
                            .padding([.leading], 10)
                    }
                }
                .onDelete(perform: delete)
            }
            .sheet(isPresented: self.$isPresentAddOrderView, onDismiss: {
                self.orderListVM.fetchAllOrders()
            }, content: {
                AddOrderView(isPresentAddOrderView: self.$isPresentAddOrderView)
            })
            .navigationTitle("Orders")
            .navigationBarItems(trailing: Button("Add", action: {
                self.isPresentAddOrderView.toggle()
            }))
        }
    }
    
    private func delete(at offsets: IndexSet) {
        offsets.forEach { index in
            let orderVM = self.orderListVM.orders[index]
            self.orderListVM.deleteOrder(orderVM)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
