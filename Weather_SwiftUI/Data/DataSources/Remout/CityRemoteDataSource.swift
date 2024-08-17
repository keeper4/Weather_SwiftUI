//
//  CityRemoteDataSource.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

final class CityRemoteDataSource {

    private let networkService: NetworkService

    init(networkService: NetworkService) {
        self.networkService = networkService
    }
}

extension CityRemoteDataSource {

    func getCurrentWeather(city: String) async throws -> ResponsWeather {
        let config = CityNetworkConfig.detailsByCity(city)
        return try await networkService.request(with: config, useToken: false)
    }
}
