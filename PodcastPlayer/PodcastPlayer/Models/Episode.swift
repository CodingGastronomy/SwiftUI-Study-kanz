//
//  Episode.swift
//  PodcastPlayer
//
//  Created by Kanz on 2020/08/14.
//

import Foundation

struct Episode: Identifiable {
    let id = UUID()
    let name: String
    let track: String
}


