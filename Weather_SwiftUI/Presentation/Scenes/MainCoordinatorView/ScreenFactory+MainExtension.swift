//
//  ScreenFactory+MainExtension.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

extension ScreenFactory: CitysViewFactory {
    func makeCitysView(coordinator: MainCoordinatorProtocol) -> CitysView {
        let viewModel = CitysViewModel(coordinator: coordinator)
        let view = CitysView(viewModel: viewModel)
       return view
    }
}

extension ScreenFactory: CitysDetailViewFactory {
    func makeCityDetailView(coordinator: MainCoordinatorProtocol, city: String) -> CityDetailView {
        return CityDetailView(viewModel: .init(coordinator: coordinator,
                              cityDetailUseCase: appFactory.makeCityDetailUseCase(),
                                               city: city))
    }
}

