//
//  MusicPlayerBar.swift
//  MusicPlayerUI
//
//  Created by Kanz on 2020/09/03.
//

import SwiftUI

struct MusicPlayerBar: View {
    
    let nameSpace: Namespace.ID
    
    var body: some View {
        HStack {
            Image("cover")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(4)
                .padding()
                .matchedGeometryEffect(id: "animation", in: nameSpace)
            
            Text("Baby Blue")
                .font(.headline)
            
            Spacer()
            
            
            Image(systemName: "play.fill")
            Image(systemName: "forward.fill")
                .padding(.trailing, 10)
        }
        
        .frame(maxWidth: .infinity, maxHeight: 60.0)
        .background(Color(white: 0.8))
    }
}

//struct MusicPlayerBar_Previews: PreviewProvider {
//    static var previews: some View {
//        MusicPlayerBar(nameSpace: )
//    }
//}
