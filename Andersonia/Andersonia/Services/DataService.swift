//
//  DataService.swift
//  Andersonia
//
//  Created by Kory Hoopes on 6/13/24.
//

import Foundation

struct DataService {
    // Function to get data from the local JSON file
    func getMovies() -> [Movie] {
        // Attempt to locate movie_summaries.json
        if let url = Bundle.main.url(forResource: "movie_summaries", withExtension: "json") {
            do {
                // Attempt to read the data from the JSON file
                let data = try Data(contentsOf: url)
                
                // Create JSON decoder instance
                let decoder = JSONDecoder()
                
                do {
                    // Atempt to decode the JSON data in an array of movie instances
                    let movies = try decoder.decode([Movie].self, from: data)
                   
                    // Return the array if successful
                    return movies
                } catch {
                    // Print error if parsing the JSON data fails
                    print("Error parsing the JSON data: \(error)")
                }
            } catch {
                // Print an error if reading the file failes
                print("Error reading the file: \(error)")
            }
        }
        
        // Return an empty array if the file could not be found or an error occured
        return [Movie]()
    }
}
