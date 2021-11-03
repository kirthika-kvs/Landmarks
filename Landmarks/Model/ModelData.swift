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
    var hikes : [Hike] = load("hikeData.json")
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
