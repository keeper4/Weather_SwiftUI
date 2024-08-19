//
//  CitysViewModel.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

final class CitysViewModel: ViewModel {

    @Published private(set) var state: CitysViewState
    private let coordinator: MainCoordinatorProtocol

    init(coordinator: MainCoordinatorProtocol) {
        state = .init()
        self.coordinator = coordinator
    }

    func handle(_ event: CitysViewEvent) {
        switch event {
        case .openDetails(let city):
            coordinator.showCityDetail(city: city)
        }
    }
}
