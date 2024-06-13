//
//  Movie.swift
//  Andersonia
//
//  Created by Kory Hoopes on 6/13/24.
//

import Foundation

struct Movie: Identifiable, Decodable {
    let id: UUID = UUID()
    
    var title: String
    var year: String
    var image: String
    var summary: String
    
    // This removes the immutable property error
    private enum CodingKeys: String, CodingKey {
        case title, year, image, summary
    }
}
