//
//  DetailWeatherObject.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation
import RealmSwift

final class DetailWeatherObject: Object {
    @Persisted(primaryKey: true) var id: String
    @Persisted var observationTime: String
    @Persisted var temperature: Double
    @Persisted var weather_icons = List<String>()
    @Persisted var windSpeed: Int
    @Persisted var windDir: String
    @Persisted var humidity: Int

    convenience init(_ detailWeather: DetailWeather) {
        self.init()

        id = detailWeather.id
        observationTime = detailWeather.observationTime
        temperature = detailWeather.temperature
        weather_icons.append(objectsIn: detailWeather.weather_icons)
        windSpeed = detailWeather.windSpeed
        windDir = detailWeather.windDir
        humidity = detailWeather.humidity
    }

    func toDomain() -> DetailWeather {
        DetailWeather(id: id,
                      observationTime: observationTime,
                      temperature: temperature,
                      weather_icons: Array(weather_icons),
                      windSpeed: windSpeed,
                      windDir: windDir,
                      humidity: humidity)
    }
}
