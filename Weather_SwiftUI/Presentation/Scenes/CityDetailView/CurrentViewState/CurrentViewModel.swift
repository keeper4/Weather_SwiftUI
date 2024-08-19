//
//  CurrentViewModel.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 19.08.2024.
//

import Foundation

struct CurrentViewModel: Equatable {
    var time: String
    var temperature: String
    var weatherURL: URL?
    var windSpeed: String
    var windDir: String
    var humidity: String
}
