//
//  ContentView.swift
//  TapGetstureTest
//
//  Created by Kanz on 2020/08/19.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped: Bool = false
    @State private var cardDragState: CGSize = .zero
    
    var body: some View {
        Card(isTapped: self.$isTapped)
            .offset(y: self.cardDragState.height)
            .animation(.spring())
            .gesture(TapGesture(count: 1)
                        .onEnded({ _ in
                            print("Tapped")
                            withAnimation {
                                self.isTapped.toggle()
                            }
                        }))
            
            .gesture(DragGesture()
                        .onChanged({ value in
                            print(value.translation)
                            self.cardDragState = value.translation
                        })
                        .onEnded({ value in
                            self.cardDragState = .zero
                        })
            )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
