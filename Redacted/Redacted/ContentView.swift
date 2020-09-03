//
//  ContentView.swift
//  Redacted
//
//  Created by Kanz on 2020/09/04.
//

import SwiftUI

struct ContentView: View {
    @State private var isRedacted: Bool = true
    
    var body: some View {
        VStack(spacing: 10.0) {
            Toggle(isOn: self.$isRedacted, label: {
                Text("Redacted")
            })
            Spacer()
            Text("Hello World")
            HStack {
                Text("Learn")
                Text("SwiftUI")
                    .redacted(reason: self.isRedacted ? .placeholder : .init())
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
