//
//  ScreenFactoryProtocols.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

@MainActor
protocol CitysViewFactory {
    func makeCitysView(coordinator: MainCoordinatorProtocol) -> CitysView
}
@MainActor
protocol CitysDetailViewFactory {
    func makeCityDetailView(coordinator: MainCoordinatorProtocol, city: String) -> CityDetailView
}
