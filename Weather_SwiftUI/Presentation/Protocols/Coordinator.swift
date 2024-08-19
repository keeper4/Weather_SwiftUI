//
//  Coordinator.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import SwiftUI

protocol Coordinator: ObservableObject where Screen: Routable {
    associatedtype Screen
    var navigationPath: [Screen] { get }
}

