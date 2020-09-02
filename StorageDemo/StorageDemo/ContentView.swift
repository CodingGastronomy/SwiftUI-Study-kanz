//
//  ContentView.swift
//  StorageDemo
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(ListItem.all()) { category in
                Section(header: EmptyView()) {
                    OutlineGroup(category, children: \.items) { item in
                        Text(item.name)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
