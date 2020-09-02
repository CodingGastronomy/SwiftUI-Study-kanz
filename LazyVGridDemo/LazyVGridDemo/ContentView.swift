//
//  ContentView.swift
//  LazyVGridDemo
//
//  Created by Kanz on 2020/09/02.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: MovieStore
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: self.columns) {
                    ForEach(store.movies ?? [], id: \.id) { movie in
                        NavigationLink(
                            destination: Text(movie.title)) {
                            
                            VStack {
                                URLImage(url: movie.posterURL)
                                    .frame(width: 100, height: 150)
                                
                                Text(movie.title)
                                    .frame(maxHeight: .infinity, alignment: .top)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Movies")
        }
        .onAppear {
            store.getAll()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: MovieStore())
    }
}
