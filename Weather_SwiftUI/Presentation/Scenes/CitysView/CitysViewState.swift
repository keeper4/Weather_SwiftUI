//
//  CitysViewState.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

struct CitysViewState: Equatable {
    var citys = [CityItem(name: "Rome"), CityItem(name: "New York"), CityItem(name: "London"), CityItem(name: "Paris")]
}

enum CitysViewEvent {
    case openDetails(String)
}

struct CityItem: Identifiable, Equatable {
    let id = UUID()
    let name: String
}
