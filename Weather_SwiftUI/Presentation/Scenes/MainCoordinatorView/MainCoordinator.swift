//
//  MainCoordinator.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import SwiftUI

final class MainCoordinator: Coordinator {

    enum Screen: Routable {
        case cityDetail(String)
    }

    @Published var navigationPath = [Screen]()
    private let showMainSceneHandler: () -> Void

    init(showMainSceneHandler: @escaping () -> Void) {
        self.showMainSceneHandler = showMainSceneHandler
    }
}

extension MainCoordinator: MainCoordinatorProtocol {
    
    func showMainScene() {
        showMainSceneHandler()
    }

    func showCityDetail(city: String) {
        navigationPath.append(.cityDetail(city))
    }
    
    func pop() {
        navigationPath.removeLast()
    }
}
