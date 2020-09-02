//
//  MovieStore.swift
//  LazyVGridDemo
//
//  Created by Kanz on 2020/09/02.
//

import Foundation

class MovieStore: ObservableObject {
    @Published var movies: [Movie]? = []
    
    func getAll() {
        let urlString = "http://www.omdbapi.com/?s=zombie&apikey=c240c896"
        guard let url = URL(string: urlString) else {
            fatalError("invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            if let movieResponse = try? JSONDecoder().decode(MoviewResponse.self, from: data) {
                DispatchQueue.main.async {                
                    self.movies = movieResponse.movies
                    print(self.movies)
                }
            }
        }.resume()
    }
}
