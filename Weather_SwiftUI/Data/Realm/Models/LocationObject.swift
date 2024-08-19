//
//  LocationObject.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation
import RealmSwift

final class LocationObject: Object {
    @Persisted(primaryKey: true) var name: String
    @Persisted var country: String

    convenience init(_ location: Location) {
        self.init()

        name = location.name
        country = location.country
    }

    func toDomain() -> Location {
        Location(
            name: name,
            country: country
        )
    }
}
