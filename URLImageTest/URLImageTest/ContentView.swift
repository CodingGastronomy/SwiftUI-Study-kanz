//
//  ContentView.swift
//  URLImageTest
//
//  Created by Kanz on 2020/08/25.
//

import SwiftUI

struct ContentView: View {
    
    let repos = [
        "https://avatars1.githubusercontent.com/u/15903991?s=200&v=4",
        "https://avatars2.githubusercontent.com/u/13662162?s=200&v=4",
        "https://avatars3.githubusercontent.com/u/53597243?s=200&v=4"
    ]
    
    var body: some View {
        //URLImage(url: "https://avatars2.githubusercontent.com/u/6590255?s=460&u=dbfae206cd21bf8a6ddb3d80bf5de19747464372&v=4")
        
        List(self.repos, id: \.self) { repo in
            URLImage(url: repo)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
