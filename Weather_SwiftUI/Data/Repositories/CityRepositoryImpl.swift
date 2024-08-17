//
//  CityRepositoryImpl.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

final class CityRepositoryImpl {
    
    private let localDataSource: CityLocalDataSource
    private let remoteDataSource: CityRemoteDataSource
    
    init(localDataSource: CityLocalDataSource, remoteDataSource: CityRemoteDataSource) {
        self.localDataSource = localDataSource
        self.remoteDataSource = remoteDataSource
    }
}

extension CityRepositoryImpl: CityRepository {
    
    func getCurrentWeather(city: String) async throws -> ResponsWeather {
        
        do {
            let model = try await remoteDataSource.getCurrentWeather(city: city)
            
            await localDataSource.save(ResponsWeatherObject(model))
            return model
        } catch {
            throw AuthError.noData
        }
    }
    
    @RealmActor
    func loadCurrentWeather(city: String) async throws -> ResponsWeather? {
        return await localDataSource.loadCurrentWeather(city: city)?.toDomain()
    }
}
