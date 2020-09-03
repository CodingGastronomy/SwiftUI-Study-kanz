//
//  BarView.swift
//  MatchedGeometryEffect
//
//  Created by Kanz on 2020/09/03.
//

import SwiftUI

struct BarView: View {
    @Namespace private var animation
        @State private var isFlipped = false

        var body: some View {
            VStack {
                if isFlipped {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 44, height: 44)
                        .matchedGeometryEffect(id: "Shape", in: animation)
                    Text("Taylor Swift – 1989")
                        .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                        .font(.headline)
                } else {
                    Text("Taylor Swift – 1989")
                        .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                        .font(.headline)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 44, height: 44)
                        .matchedGeometryEffect(id: "Shape", in: animation)
                }
            }
            .onTapGesture {
                withAnimation {
                    self.isFlipped.toggle()
                }
            }
        }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
