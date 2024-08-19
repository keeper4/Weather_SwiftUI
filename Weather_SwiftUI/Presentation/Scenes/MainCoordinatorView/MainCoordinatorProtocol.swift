//
//  MainCoordinatorProtocol.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

@MainActor
protocol MainCoordinatorProtocol {
    func showMainScene()
    func showCityDetail(city: String)
    func pop()
}
