//
//  DetailWeatherObject.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation
import RealmSwift

final class DetailWeatherObject: Object {
    @Persisted var observationTime: String
    @Persisted var temperature: Double
    @Persisted var weather_icons = List<String>()
    @Persisted var windSpeed: Int
    @Persisted var windDir: String
    @Persisted var humidity: Int

    convenience init(_ detailWeather: DetailWeather) {
        self.init()
        observationTime = detailWeather.observation_time
        temperature = detailWeather.temperature
        weather_icons.append(objectsIn: detailWeather.weather_icons)
        windSpeed = detailWeather.wind_speed
        windDir = detailWeather.wind_dir
        humidity = detailWeather.humidity
    }

    func toDomain() -> DetailWeather {
        DetailWeather(observation_time: observationTime,
                      temperature: temperature,
                      weather_icons: Array(weather_icons),
                      wind_speed: windSpeed,
                      wind_dir: windDir,
                      humidity: humidity)
    }
}
