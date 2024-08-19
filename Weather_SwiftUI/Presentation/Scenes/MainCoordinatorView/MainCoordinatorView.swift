//
//  MainCoordinatorView.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import SwiftUI

struct MainCoordinatorView: View {
    
    private let factory: MainCoordinatorFactory
    @ObservedObject private var coordinator: MainCoordinator
    
    init(_ coordinator: MainCoordinator, factory: MainCoordinatorFactory) {
        self.factory = factory
        self.coordinator = coordinator
    }
    
    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            factory.makeCitysView(coordinator: coordinator)
                .navigationDestination(for: MainCoordinator.Screen.self) {
                    destination($0)
                }
        }
        .accentColor(.white)
    }
    
    @ViewBuilder
    private func destination(_ screen: MainCoordinator.Screen) -> some View {
        switch screen {
        case .cityDetail(let city):
            factory.makeCityDetailView(coordinator: coordinator, city: city)
        }
    }
}

