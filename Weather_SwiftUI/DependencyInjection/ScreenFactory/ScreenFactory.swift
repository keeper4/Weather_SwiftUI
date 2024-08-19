//
//  ScreenFactory.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import SwiftUI

final class ScreenFactory: MainCoordinatorFactory {
    
   internal let appFactory: AppFactory

    init(appFactory: AppFactory) {
        self.appFactory = appFactory
    }
}
