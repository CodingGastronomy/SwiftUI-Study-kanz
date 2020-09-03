//
//  FooView.swift
//  MatchedGeometryEffect
//
//  Created by Kanz on 2020/09/03.
//

import SwiftUI

struct FooView: View {
    
    @State private var isSwitched: Bool = false
    @Namespace private var ns
    
    var body: some View {
        HStack {
            
            if isSwitched == false {
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                    .matchedGeometryEffect(id: "circle", in: ns)
            }
            
            Spacer()
            
            Button("Switch") {
                withAnimation {
                    self.isSwitched.toggle()
                }
            }
            
            Spacer()
            
            VStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                if isSwitched == true {
                    Circle()
                        .fill(Color.green)
                        .matchedGeometryEffect(id: "circle", in: ns)
                }
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
            }
            
        }
    }
}

struct FooView_Previews: PreviewProvider {
    static var previews: some View {
        FooView()
    }
}
