//
//  CityDetailUseCase.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 19.08.2024.
//

import Foundation

final class CityDetailUseCase {

    private let cityRepository: CityRepository

    init(cityRepository: CityRepository) {
        self.cityRepository = cityRepository
    }

    func getCurrentWeather(city: String) async throws -> ResponsWeather {
        return try await cityRepository.getCurrentWeather(city: city)
    }
    
    func loadCurrentWeather(city: String) async throws -> ResponsWeather? {
        return try await cityRepository.loadCurrentWeather(city: city)
    }
}
