//
//  Images.swift
//  Andersonia
//
//  Created by Kory Hoopes on 6/13/24.
//

import SwiftUI

struct Images {
    // This function adds the modifiers resizable and aspectRatio as defaults
    func defaults(image: Image, contentMode: ContentMode) -> some View {
        return image.resizable().aspectRatio(contentMode: contentMode)
    }
}
