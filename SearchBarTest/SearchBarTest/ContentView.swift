//
//  ContentView.swift
//  SearchBarTest
//
//  Created by Kanz on 2020/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm: String = ""
    
    let names: [String] = ["Hong", "Kang", "Song", "Jin", "Ha"]
    
    var body: some View {
        List {
            SearchBar(text: self.$searchTerm)
            
            ForEach(self.names.filter {
                self.searchTerm.isEmpty ? true : $0.localizedCaseInsensitiveContains(self.searchTerm)
            }, id: \.self) { name in
                Text(name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
