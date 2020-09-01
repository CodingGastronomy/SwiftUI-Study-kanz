//
//  ContentView.swift
//  ProgressViewTest
//
//  Created by Kanz on 2020/09/01.
//

import SwiftUI

struct ContentView: View {
    
    @State private var downloaded: CGFloat = 0
    
    var body: some View {
        VStack {
            ProgressView("Loading..")
            
            Spacer()
                .frame(height: 30.0)
            
            ProgressView(String(format: "%.0f", self.downloaded), value: self.downloaded, total: 100)
            
            Button("Download") {
                self.startDownload()
            }
        }
    }
    
    private func startDownload() {
        let timer = Timer(timeInterval: 0.1, repeats: true) { timer in
            if self.downloaded < 100 {
                self.downloaded += 2
            } else {
                timer.invalidate()
            }
        }
        
        RunLoop.main.add(timer, forMode: .common)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
