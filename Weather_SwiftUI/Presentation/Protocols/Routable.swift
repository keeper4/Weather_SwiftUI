//
//  Routable.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

protocol Routable: Hashable, Identifiable {}

extension Routable {
    var id: String {
        String(describing: self)
    }
}
