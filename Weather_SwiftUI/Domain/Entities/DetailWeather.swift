//
//  DetailWeather.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

struct DetailWeather: Codable {
    
    var id: String = UUID().uuidString
    let observationTime:       String
    let temperature:           Double
    let weather_icons:         [String]
    let windSpeed:             Int
    let windDir:               String
    let humidity:              Int
    
    var weatherURL:          URL? {
        get {
            return URL(string: weather_icons.first ?? "")
        }
    }
}
