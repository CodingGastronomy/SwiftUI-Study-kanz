//
//  ContentView.swift
//  GridMore
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
        GridItem(.fixed(100)),
        GridItem(.fixed(150)),
        GridItem(.fixed(100))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: self.columns) {
                
                ForEach(1..<20) { _ in
                    Rectangle()
                        .fill(Color.red)
                        .aspectRatio(contentMode: .fit)
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
