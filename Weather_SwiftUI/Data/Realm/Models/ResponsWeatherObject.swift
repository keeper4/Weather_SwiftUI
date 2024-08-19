//
//  ResponsWeatherObject.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation
import RealmSwift

final class ResponsWeatherObject: Object {
    @Persisted(primaryKey: true) var id: String
    @Persisted var locationObject: LocationObject?
    @Persisted var currentObject: DetailWeatherObject?

    convenience init(_ responsWeather: ResponsWeather) {
        self.init()
        locationObject = LocationObject(responsWeather.location)
        currentObject  = DetailWeatherObject(responsWeather.current)
        id = locationObject?.name ?? UUID().uuidString
    }

    func toDomain() -> ResponsWeather {
        ResponsWeather(location: locationObject!.toDomain(),
                       current: currentObject!.toDomain())
    }
}
