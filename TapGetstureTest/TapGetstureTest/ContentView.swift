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
    @State private var cardRotateState: Double = 0
    
    var body: some View {
        Card(isTapped: self.isTapped)
            .offset(y: self.cardDragState.height)
            .animation(.spring())
            .rotationEffect(Angle(degrees: self.cardRotateState))
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
        
            .gesture(RotationGesture()
                        .onChanged({ angle in
                            self.cardRotateState = angle.degrees
                        }))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
