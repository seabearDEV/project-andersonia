//
//  MovieDetailView.swift
//  Andersonia
//
//  Created by Kory Hoopes on 6/13/24.
//

import SwiftUI

struct MovieDetailView: View {
    // Properties
    var movie: Movie
    // Utilities
    let images = Images()
    
    // Move details view
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                // Movie poster
                images.defaults(image: Image(movie.image), contentMode: .fill)
                
                VStack {
                    Text(movie.title)
                        .font(.title)
                        .padding(.bottom, 16)
                    
                    Text(movie.summary)
                        .font(.subheadline)
                        .padding(.bottom, 16)
                }
                .padding()
            }
            .padding(.bottom, 80)
        }
        .ignoresSafeArea()
    }
}

// Xcode preview
#Preview {
    MovieDetailView(
        movie: Movie(
            title: "Asteroid City",
            year: "2023",
            image: "Asteroid_City",
            summary: "Asteroid City: a fictional American desert town, circa 1955. Junior Stargazers and Space Cadets from across the country assemble for the annual Asteroid Day celebration but the scholarly competition is spectacularly upended by world-changing events. Equal parts comedy, drama, and romance. Directed by Wes Anderson and featuring an all-star cast including Jason Schwartzman, Scarlett Johansson, and Tom Hanks."
        )
    )
}
