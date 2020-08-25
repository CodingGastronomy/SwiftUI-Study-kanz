//
//  ContentView.swift
//  SectionGroup
//
//  Created by Kanz on 2020/08/25.
//

import SwiftUI

struct ContentView: View {
    
    private var categories = GroceryCategory.all()
    
    var body: some View {
        List {
            ForEach(self.categories, id: \.title) { gc in
                Section(header: Text(gc.title).font(.title)) {
                    ForEach(gc.groceryItems, id: \.title) { item in
                        Text(item.title)
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
