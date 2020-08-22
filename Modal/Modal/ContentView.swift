//
//  ContentView.swift
//  Modal
//
//  Created by Kanz on 2020/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var flagViewModel: FlagViewModel = FlagViewModel()
    let flags = ["🏳️‍🌈", "🇰🇷", "🇱🇷", "🇲🇴", "🇬🇷", "🇲🇱"]
    
    var body: some View {
        List {
            Text(self.flagViewModel.country)
            
            ForEach(self.flags, id: \.self) { flag in
                
                HStack {
                    Text(flag)
                        .font(.custom("Arial", size: 100))
                    Spacer()
                }
                .onTapGesture {
                    self.flagViewModel.flag = flag
                    self.flagViewModel.showModal.toggle()
                }
            }
        }
        .sheet(isPresented: self.$flagViewModel.showModal) {
            DetailView(flagViewModel: self.$flagViewModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

