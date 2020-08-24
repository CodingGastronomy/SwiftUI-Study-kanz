//
//  AddOrderView.swift
//  CoffeeApp
//
//  Created by Kanz on 2020/08/24.
//

import SwiftUI

struct AddOrderView: View {
    @Binding var isPresentAddOrderView: Bool
    @State private var addOrderVM: AddOrderViewModel = AddOrderViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                VStack {
                    
                    TextField("Enter name", text: self.$addOrderVM.name)
                        
                    Picker(selection: self.$addOrderVM.type, label: Text("")) {
                        Text("Americano")
                            .tag("americano")
                        Text("Latte")
                            .tag("latte")
                        Text("ColdBrew")
                            .tag("coldbrew")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Button("Place Order") {
                        self.addOrderVM.saveOrder()
                        self.isPresentAddOrderView = false
                    }
                    .padding(8)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(10)
                }
            }
            .padding()
            
            .navigationTitle("Add Order")
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(isPresentAddOrderView: .constant(false))
    }
}
