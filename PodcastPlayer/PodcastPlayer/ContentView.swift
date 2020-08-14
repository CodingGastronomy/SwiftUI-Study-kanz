//
//  ContentView.swift
//  PodcastPlayer
//
//  Created by Kanz on 2020/08/14.
//

import SwiftUI

struct ContentView: View {
    
    let episode = Episode(name: "SwiftUI Episode", track: "WWDC 2020")
    
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(self.isPlaying ? .red : .black)
            
            Text(self.episode.track)
                .foregroundColor(.secondary)
            
            Spacer()
                .frame(height: 30.0)
            
            PlayButton(isPlaying: $isPlaying)
        }
    }
}


struct PlayButton: View {
    
    // @State private var isPlaying: Bool = false (x)
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }
        .padding(12.0)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
