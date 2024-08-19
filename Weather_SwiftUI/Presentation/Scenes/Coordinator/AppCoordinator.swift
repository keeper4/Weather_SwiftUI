//
//  AppCoordinator.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

@MainActor
final class AppCoordinator: ObservableObject {

    enum State {
        case idle
        case loading
        case main
    }

    enum Action {
        case showMain
    }

    @Published private(set) var state: State

    init() {
        state = .idle
    }

    func handle(_ action: Action) {
        switch action {
        case .showMain:
            state = .main
        }
    }
}

