//
//  ContentView.swift
//  LazyVGridTest
//
//  Created by Kanz on 2020/09/01.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [String] = ["🐵","🐭","🦊","🐸", "🐧", "🦄", "🐝", "🐛", "🐨", "🦁"]
    @State private var sliderValue: CGFloat = 2
    
    var body: some View {
        
        let columns: [GridItem] = Array(repeating: .init(.flexible()),
                                        count: Int(self.sliderValue))
        
        return VStack {
            Slider(value: self.$sliderValue, in: 2...10, step: 1)
                .padding()
            
            Text(String(format: "%.0f", self.sliderValue))
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(self.animals, id: \.self) { animal in
                        Text(animal)
                            .font(.system(size: 100))
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
