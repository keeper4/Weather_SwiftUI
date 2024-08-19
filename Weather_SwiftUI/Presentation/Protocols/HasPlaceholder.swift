//
//  HasPlaceholder.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

protocol HasPlaceholder {
    static func placeholder(id: String) -> Self
}

extension Array where Element: HasPlaceholder {
    static func placeholders(count: Int) -> [Element] {
        (0..<count).map { .placeholder(id: "\($0)") }
    }
}
