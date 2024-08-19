//
//  Weather_SwiftUIApp.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import SwiftUI

@main
struct Weather_SwiftUIApp: App {
    private let appFactory = AppFactory()

    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(
                screenFactory: ScreenFactory(appFactory: appFactory),
                coordinator: AppCoordinator()
            )
            .preferredColorScheme(.dark)
        }
    }
}
