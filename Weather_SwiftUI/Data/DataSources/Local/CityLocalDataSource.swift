//
//  CityLocalDataSource.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation
@preconcurrency import RealmSwift

final class CityLocalDataSource: LocalDataSource {

    private let realmProvider = RealmProvider()

    @RealmActor
    func loadCurrentWeather(city: String) async -> ResponsWeatherObject? {
        guard let storage = await realmProvider.realm() else { return nil }
        return storage.objects(ResponsWeatherObject.self).filter { $0.locationObject.name == city }.first
    }
}

class LocalDataSource {

    private let realmProvider = RealmProvider()

    @RealmActor
    func save<T: Object>(_ model: T) async {
        guard let storage = await realmProvider.realm() else { return }

        storage.writeAsync {
            storage.add(model, update: .all)
        }
    }
}
