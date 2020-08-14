//
//  ContentView.swift
//  Binding
//
//  Created by Kanz on 2020/08/13.
//

import SwiftUI

struct ContentView: View {
    
    var model = Dish.all()
    
    @State private var isSpicy: Bool = false
    
    var body: some View {
        
        List {
            
            Toggle(isOn: $isSpicy) {
                Text("Spicy")
                    .font(.title)
            }
            
            ForEach(model.filter { $0.isSpicy == self.isSpicy }) { dish in
                HStack {
                    Image(dish.imageURL)
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    
                    Spacer()
                    
                    if (dish.isSpicy) {
                        Image("spicy")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                }
            }
        }// List
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
