//
//  Movie.swift
//  LazyVGridDemo
//
//  Created by Kanz on 2020/09/02.
//

import Foundation

struct MoviewResponse: Decodable {
    let movies: [Movie]
    
    enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}

struct Movie: Identifiable, Decodable {
    let id: String
    let title: String
    let year: String
    let type: String
    let posterURL: String
    
    enum CodingKeys: String, CodingKey {
        case id = "imdbID"
        case title = "Title"
        case year = "Year"
        case type = "Type"
        case posterURL = "Poster"
    }
}
