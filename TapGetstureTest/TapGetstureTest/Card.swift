//
//  Card.swift
//  TapGetstureTest
//
//  Created by Kanz on 2020/08/20.
//

import Foundation
import SwiftUI

struct Card: View {
    let isTapped: Bool
    @State private var scale: CGFloat = 1
    
    var body: some View {
        VStack {
            
            Image("coldbrew")
                .resizable()
                .scaleEffect(self.scale)
                .frame(width: 300.0, height: 300.0)
                .gesture(MagnificationGesture()
                            .onChanged({ value in
                                self.scale = value.magnitude
                            }))
            
            Text("Card")
                .font(.largeTitle)
                .foregroundColor(Color.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(self.isTapped ? Color.purple : Color.yellow)
        .cornerRadius(30.0)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(isTapped: true)
    }
}
