//
//  ContentView.swift
//  Hikings
//
//  Created by Kanz on 2020/08/12.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination:
                                HikeDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            .navigationTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16.0)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                    .foregroundColor(.primary)
                Text(String(format: "%.2f miles", hike.miles))
                    .foregroundColor(.secondary)
            }
        }
    }
}
