//
//  Card.swift
//  TapGetstureTest
//
//  Created by Kanz on 2020/08/20.
//

import SwiftUI

struct Card: View {
    @Binding var isTapped: Bool
    
    var body: some View {
        VStack {
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
        Card(isTapped: .constant(true))
    }
}
