//
//  CityDetailViewModel.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

final class CityDetailViewModel: ViewModel {

    @Published private(set) var state: CityDetailViewState
    private let coordinator: MainCoordinatorProtocol
    private let cityDetailUseCase: CityDetailUseCase
        
    private let city: String
    
    init(coordinator: MainCoordinatorProtocol, cityDetailUseCase: CityDetailUseCase, city: String) {
        state = .loading
        self.city = city
        self.coordinator = coordinator
        self.cityDetailUseCase = cityDetailUseCase
    }

    func handle(_ event: CityDetailViewEvent) {
        switch event {
        case .onAppear:
            Task { await fetchCityWeather() }
        }
    }
}

private extension CityDetailViewModel {

    func fetchCityWeather() async {
        do {
            
            let oldDataModel = try await cityDetailUseCase.loadCurrentWeather(city: self.city)
            if let oldDataModel = oldDataModel {
                state = .loaded(getViewData(oldDataModel))
            }
            
            let model = try await cityDetailUseCase.getCurrentWeather(city: self.city)
            state = .loaded(getViewData(model))
        } catch {
            state = .error(error.localizedDescription)
        }
    }

    func getViewData(_ model: ResponsWeather) -> CityDetailViewState.ViewData {
        let currentVM = CurrentViewModel(time: model.current.observation_time,
                                         temperature: "\(model.current.temperature)",
                                         weatherURL: model.current.weatherURL,
                                         windSpeed: "\(model.current.wind_speed)",
                                         windDir: model.current.wind_dir,
                                         humidity: "\(model.current.humidity)")
        
        let locationVM = LocationViewModel(city: model.location.name, country: model.location.country)
    
        return .init(currentVM: currentVM, locationVM: locationVM)
    }
}
