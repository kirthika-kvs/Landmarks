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
    var isFeatured: Bool
    
    // Category for the landmark
    var category : Category
    enum Category : String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    
    // Image for the landmark
    private var imageName : String
    var image : Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
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
