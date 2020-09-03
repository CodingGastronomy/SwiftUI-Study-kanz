//
//  ContentView.swift
//  MusicPlayerUI
//
//  Created by Kanz on 2020/09/03.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails: Bool = false
    @Namespace private var ns
    
    var body: some View {
        VStack {
            Spacer()
            if showDetails == true {
                MusicPlayer(nameSpace: ns)
            } else {
                MusicPlayerBar(nameSpace: ns)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                self.showDetails.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
