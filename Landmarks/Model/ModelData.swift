//
//  ModelData.swift
//  Landmarks
//
//  Created by Kirthika Seralathan on 10/29/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    // Store the landmarks
    @Published var landmarks : [Landmark] = load("landmarkData.json")
    // Store hikes
    var hikes : [Hike] = load("hikeData.json")
    @Published var profile = Profile.default

    // Store categories as computed dictionaries
    var categories : [String: [Landmark]] {
        Dictionary (
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
    // Store Featured Landmarks
    var features : [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("\(filename) could not be found in the main bundle")
    }
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("\(filename) could not be loaded from the main bundle due to \n \(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("\(filename) could not be parsed as \(T.self) with \n \(error)")
    }
}
