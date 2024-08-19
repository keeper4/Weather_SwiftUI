//
//  DetailWeather.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

struct DetailWeather: Codable {
    
    let observation_time:       String
    let temperature:           Double
    let weather_icons:         [String]
    let wind_speed:             Int
    let wind_dir:               String
    let humidity:              Int
    
    var weatherURL:          URL? {
        get {
            return URL(string: weather_icons.first ?? "")
        }
    }
}
