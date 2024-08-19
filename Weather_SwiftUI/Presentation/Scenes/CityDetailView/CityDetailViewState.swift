//
//  CityDetailViewState.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

enum CityDetailViewState: Equatable {
    case loading
    case error(String)
    case loaded(ViewData)
    
    struct ViewData: Equatable {
        let currentVM: CurrentViewModel
        let locationVM: LocationViewModel
    }
}

enum CityDetailViewEvent {
    case onAppear
}

