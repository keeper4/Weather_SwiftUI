//
//  CityDetailView.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import SwiftUI

struct CityDetailView: View {
    
    @StateObject private var viewModel: CityDetailViewModel
    
    init(viewModel: CityDetailViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        contentView
            .onAppear {
                viewModel.handle(.onAppear)
            }
    }
    
    @ViewBuilder
    private var contentView: some View {
        switch viewModel.state {
        case .error(let message):
           ErrorView(message: message)
            
        case .loading:
            Text("loading..")

        case .loaded(let viewData):
            VStack(alignment: .center, spacing: 20) {
                CurrentView(viewModel: viewData.currentVM)
                LocationView(viewModel: viewData.locationVM)
            }
        }
    }
}

#Preview {
    CityDetailView(viewModel: .init(coordinator: MainCoordinator(showMainSceneHandler: {}), cityDetailUseCase: AppFactory().makeCityDetailUseCase(), city: "Rome"))
        .preferredColorScheme(.dark)
}
