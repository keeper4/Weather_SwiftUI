//
//  AppFactory.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

final class AppFactory {
    private lazy var keychainService = KeychainService()
    private lazy var networkService = NetworkService(keychainService: keychainService)

    private lazy var cityRepository: CityRepositoryImpl = {
        let localDataSource = CityLocalDataSource()
        let remoteDataSource = CityRemoteDataSource(networkService: networkService)

        return CityRepositoryImpl(localDataSource: localDataSource, remoteDataSource: remoteDataSource)
    }()
}

extension AppFactory {

    func makeCityDetailUseCase() -> CityDetailUseCase {
        CityDetailUseCase(cityRepository: cityRepository)
    }
}
