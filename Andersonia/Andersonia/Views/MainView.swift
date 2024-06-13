//
//  ContentView.swift
//  Andersonia
//
//  Created by Kory Hoopes on 6/13/24.
//

import SwiftUI

// Main view (app entry)
struct MainView: View {
    var body: some View {
        TabView {
            MoviesView()
                .tabItem {
                    VStack {
                        Image(systemName: "movieclapper.fill")
                        Text("Movies")
                    }
                }
            BiographyView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Biography")
                    }
                }
        }
    }
}

// Xcode preview
#Preview {
    MainView()
}
