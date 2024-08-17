//
//  Location.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

struct Location: Codable {
    var id: String = UUID().uuidString
    let name: String
    let country: String
}
