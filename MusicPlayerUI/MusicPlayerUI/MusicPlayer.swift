//
//  MusicPlayer.swift
//  MusicPlayerUI
//
//  Created by Kanz on 2020/09/03.
//

import SwiftUI

struct MusicPlayer: View {
    
    let nameSpace: Namespace.ID
    
    var body: some View {
        VStack {
            Image("cover")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)
                .matchedGeometryEffect(id: "animation", in: nameSpace)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Baby Blue")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text("Badfinger")
                        .font(.title)
                        .fontWeight(.light)
                        .opacity(0.5)
                        .foregroundColor(Color.white)
                }
                .padding()
                Spacer()
            }
            
            HStack {
                Image(systemName: "backward.fill")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                
                Image(systemName: "play.fill")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                    .padding([.leading, .trailing], 75)
                
                Image(systemName: "forward.fill")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red.opacity(0.5))
    }
}

//struct MusicPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        MusicPlayer(nameSpace: "asdf")
//    }
//}
