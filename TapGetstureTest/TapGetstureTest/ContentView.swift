//
//  ContentView.swift
//  TapGetstureTest
//
//  Created by Kanz on 2020/08/19.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped: Bool = false
    
    var body: some View {
        Card(isTapped: self.$isTapped)
            .onTapGesture {
                print("Tapped")
                withAnimation {                
                    self.isTapped.toggle()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
