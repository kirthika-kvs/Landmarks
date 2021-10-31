//
//  Landmark.swift
//  Landmarks
//
//  Created by Kirthika Seralathan on 10/29/21.
//

import Foundation
import UIKit
import SwiftUI
import CoreLocation

struct Landmark : Hashable, Codable, Identifiable {
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    var isFavorite: Bool
    
    // Image for the landmark
    private var imageName : String
    var image : Image {
        Image(imageName)
    }
    
    // Coordinates for the location
    private var coordinates : Coordinates
    // Coordinate Property for Map Kit
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    struct Coordinates : Hashable, Codable {
        var latitude : Double
        var longitude : Double
    }
}
