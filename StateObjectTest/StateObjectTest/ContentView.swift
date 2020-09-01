//
//  ContentView.swift
//  StateObjectTest
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

// MARK: -
class Counter: ObservableObject {
    @Published var value: Int = 0
}

struct CounterView: View {
//    @ObservedObject var counter = Counter()
    @StateObject var counter = Counter() // create once
    
    var body: some View {
        VStack {
            Text("\(counter.value)")
                .padding()
            
            Button("Increment") {
                self.counter.value += 1
            }
        }
        .padding()
        .background(Color.green)
    }
}

// MARK: -

struct ContentView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("CONTENT VIEW")
            Text("\(self.count)")
            Button("Increment CountentView Counter") {
                self.count += 1
            }
            
            CounterView() // Re-initialize..
        }
        .padding()
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
