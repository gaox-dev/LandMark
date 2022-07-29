//
//  LandMark.swift
//  LandMark
//
//  Created by Gao on 2022/7/9.
//

import Foundation
import SwiftUI
import CoreLocation

struct LandMark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    var icon: String
    
    var category: Category
    enum Category: String, CaseIterable, Codable{
        case lakes = "Lakes"
        case rivers = "Rivers"
        case moumtains = "Mountains"
    }
    
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
