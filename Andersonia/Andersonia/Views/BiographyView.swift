//
//  BiographyView.swift
//  Andersonia
//
//  Created by Kory Hoopes on 6/13/24.
//

import SwiftUI

struct BiographyView: View {
    // Utilities
    let images = Images()
    // Biography view
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                // Portrait image
                images.defaults(image: Image("Wes_Anderson-portrait"), contentMode: .fill)
                
                VStack {
                    Text("Wes Anderson")
                        .font(.largeTitle)
                        .padding(.bottom, 16)
                    Text("Wesley Wales Anderson (born May 1, 1969) is an American filmmaker. His films are known for their eccentricity, distinctive visual and narrative styles, and frequent use of ensemble casts. With themes of grief, loss of innocence, and dysfunctional families, critics have cited Anderson as an auteur. Three of his films have appeared in BBC Culture's 2016 poll of the greatest films since 2000.\n\n Anderson gained acclaim for his early films Bottle Rocket (1996) and Rushmore (1998). He often collaborated with brothers Luke Wilson and Owen Wilson during that time and founded his production company American Empirical Pictures. He received a nomination for the Academy Award for Best Original Screenplay for The Royal Tenenbaums (2001). His next films included The Life Aquatic with Steve Zissou (2004), The Darjeeling Limited (2007), and his first stop-motion film, Fantastic Mr. Fox (2009), for which he received a Best Animated Feature nomination, and then Moonrise Kingdom (2012), earning his second Best Original Screenplay nomination.\n\nFor his film The Grand Budapest Hotel (2014), he received his first Academy Award nominations for Best Director and Best Picture, and won the Golden Globe Award for Best Motion Picture – Musical or Comedy and the BAFTA Award for Best Original Screenplay. Later works include his second stop-motion film, Isle of Dogs (2018), earning him the Silver Bear for Best Director and another Best Animated Feature nomination, followed by The French Dispatch (2021) and Asteroid City (2023). Anderson won the Academy Award for Best Live Action Short Film for The Wonderful Story of Henry Sugar (2023).")
                }
                .padding()
            }
            .padding(.bottom, 80)
        }
        .ignoresSafeArea()
    }
}

// Xcode Preview
#Preview {
    BiographyView()
}
