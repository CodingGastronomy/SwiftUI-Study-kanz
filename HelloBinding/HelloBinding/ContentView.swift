//
//  ContentView.swift
//  HelloBinding
//
//  Created by Kanz on 2020/08/14.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Text(name)
                .padding()
            
            TextField("Enter name", text: $name)
                .padding(12)
            
            Button(action: printName) {
                Text("Show Name Value")
            }
        }
    }
    
    private func printName() {
        print(self.name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
