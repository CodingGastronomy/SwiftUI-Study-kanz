//
//  ContentView.swift
//  Multiplatform-watchOS Extension
//
//  Created by Kanz on 2020/08/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(0...5, id: \.self) { index in
                Text("Hello, World!: \(index)")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
