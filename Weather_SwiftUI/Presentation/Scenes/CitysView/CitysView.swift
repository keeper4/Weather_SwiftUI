//
//  CitysView.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import SwiftUI

struct CitysView: View {
    
    @StateObject private var viewModel: CitysViewModel
    
    init(viewModel: CitysViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        RootView
    }
    
    private var RootView: some View {
        List(viewModel.state.citys) { item in
            Text(item.name)
                .onTapGesture {
                    viewModel.handle(.openDetails(item.name))
                }
        }
        .navigationTitle(LocalizedKey.CitysView.title)
    }
}

#Preview {
    CitysView(viewModel: .init(coordinator: MainCoordinator(showMainSceneHandler: {})))
}

private enum Constants {
    enum ContentStack {
        static let spacing: CGFloat = 20
        static let padding: CGFloat = 20
    }
    enum ButtonStack {
        static let spacing: CGFloat = 10
    }
}
