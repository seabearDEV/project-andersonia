//
//  MoviesCard.swift
//  Andersonia
//
//  Created by Kory Hoopes on 6/13/24.
//

import SwiftUI

struct MovieCard: View {
    // Properties
    var movie: Movie
    // Utilities
    let images = Images()
    
    // Movie card component
    var body: some View {
        ZStack (alignment: .topLeading) {
            // Containing rectangle
            Rectangle()
                .background(content: {
                    images.defaults(image: Image(movie.image), contentMode: .fill)
                })
                .foregroundColor(.clear)
                .frame(height: 200)
            
            // Title background
            Rectangle()
                .frame(height: 60)
                .foregroundColor(.black)
                .opacity(0.75)
            // Title
            Text(movie.title)
                .font(.title2)
                .foregroundColor(.white)
                .padding()
        }
        .cornerRadius(16)
        .shadow(radius: 4)
        .padding(8)
    }
}

// Xcode preview
#Preview {
    MovieCard(
        movie: Movie(
            title: "Asteroid City",
            year: "2023",
            image: "Asteroid_City",
            summary: "Asteroid City: a fictional American desert town, circa 1955. Junior Stargazers and Space Cadets from across the country assemble for the annual Asteroid Day celebration but the scholarly competition is spectacularly upended by world-changing events. Equal parts comedy, drama, and romance. Directed by Wes Anderson and featuring an all-star cast including Jason Schwartzman, Scarlett Johansson, and Tom Hanks."
        )
    )
}
