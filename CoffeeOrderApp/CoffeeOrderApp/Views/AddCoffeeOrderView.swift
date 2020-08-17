//
//  AddCoffeeOrderView.swift
//  CoffeeOrderApp
//
//  Created by Kanz on 2020/08/17.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    @ObservedObject private var addCoffeeOrderViewModel = CoffeeOrderViewModel(webService: WebService())
    @Binding var isPresented: Bool
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Form {
                    Section(header: Text("INFORMATION").font(.body)) {
                        TextField("Enter Name", text: self.$addCoffeeOrderViewModel.name)
                    }
                    
                    Section(header: Text("SELECT COFFEE").font(.body)) {
                        ForEach(addCoffeeOrderViewModel.coffeeList, id: \.name) { coffee in
                            CoffeeCellView(coffee: coffee,
                                           selection: self.$addCoffeeOrderViewModel.coffeeName)
                        }
                    }
                    
                    Section(header: Text("SELECT COFFEE").font(.body),
                            footer: OrderTotalView(total: self.addCoffeeOrderViewModel.total)) {
                        Picker("", selection: self.$addCoffeeOrderViewModel.size) {
                            Text("Small")
                                .tag("Small")
                            Text("Medium")
                                .tag("Medium")
                            Text("Large")
                                .tag("Large")
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    
                }//Form
                
                HStack {
                    Button("Place Order") {
                        self.addCoffeeOrderViewModel.placeOrder()
                        self.isPresented = false
                    }
                }
                .padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100))
                .foregroundColor(Color.white)
                .background(Color(red: 47/255, green: 204/255, blue: 113/255))
                .cornerRadius(10.0)
                
                .navigationTitle("Add Order")
            }
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView(isPresented: .constant(false))
    }
}

struct CoffeeCellView: View {
    let coffee: CoffeeViewModel
    @Binding var selection: String
    
    var body: some View {
        HStack {
            Image(coffee.imageURL)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(16.0)
            
            Text(coffee.name)
                .font(.title)
                .padding([.leading], 20)
            
            Spacer()
            
            Image(systemName: self.selection == self.coffee.name ? "checkmark" : "")
        }
        .onTapGesture {
            self.selection = self.coffee.name
        }
    }
}
