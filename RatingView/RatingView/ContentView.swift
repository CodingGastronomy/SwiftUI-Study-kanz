//
//  ContentView.swift
//  RatingView
//
//  Created by Kanz on 2020/08/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rating: Int?
    
    var body: some View {
        VStack {
            RatingView(rating: self.$rating)
            Text(rating != nil ? "You rating: \(self.rating!)" : "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
