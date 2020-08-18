//
//  ContentView.swift
//  Previews
//
//  Created by Kanz on 2020/08/18.
//

import SwiftUI

struct ContentView: View {
    
    let coffees = Coffee.all()
    
    var body: some View {
        List {
            ForEach(coffees, id: \.self) { coffee in
                CoffeeCell(coffee: coffee)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
