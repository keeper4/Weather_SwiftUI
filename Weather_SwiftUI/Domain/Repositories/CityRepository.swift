//
//  CityRepository.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

protocol CityRepository {
    func getCurrentWeather(city: String) async throws -> ResponsWeather
    func loadCurrentWeather(city: String) async throws -> ResponsWeather?
}
