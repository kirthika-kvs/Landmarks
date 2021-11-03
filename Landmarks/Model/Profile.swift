//
//  Profile.swift
//  Landmarks
//
//  Created by Kirthika Seralathan on 11/3/21.
//

import Foundation

struct Profile {
    
    // User Details
    var userName : String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    // Default User
    static let `default` = Profile(userName: "John Doe")
    
    // Seasons
    enum Season : String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
    
}
