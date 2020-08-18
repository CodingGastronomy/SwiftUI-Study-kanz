//
//  ContentView.swift
//  Graphic
//
//  Created by Kanz on 2020/08/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Circle()
                .stroke(Color.green, lineWidth: 20.0)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
