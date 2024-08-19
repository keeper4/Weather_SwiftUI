//
//  ViewModel.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 18.08.2024.
//

import Foundation

@MainActor
protocol ViewModel<State, Event>: ObservableObject where State: Equatable {
    associatedtype State
    associatedtype Event

    var state: State { get }

    func handle(_ event: Event)
}
