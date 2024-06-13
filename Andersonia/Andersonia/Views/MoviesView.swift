//
//  MoviesView.swift
//  Andersonia
//
//  Created by Kory Hoopes on 6/13/24.
//

import SwiftUI

struct MoviesView: View {
    // Properties
    @State var movies: [Movie] = [Movie]()
    // Services
    var dataService: DataService = DataService()
    
    // Movies view
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                VStack (alignment: .leading) {
                    ForEach(movies) { movie in
                        NavigationLink {
                            MovieDetailView(movie: movie)
                        } label: {
                            MovieCard(movie: movie)
                        }
                    }
                }
                .padding(.top, 60)
                .padding(.bottom, 80)
            }
            .ignoresSafeArea()
        }
        .onAppear {
            movies = dataService.getMovies()
        }
    }
}

// Xcode preview
#Preview {
    MoviesView()
}
