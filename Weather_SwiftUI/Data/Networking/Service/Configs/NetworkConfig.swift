//
//  NetworkConfig.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

protocol NetworkConfig {
    var path: String { get }
    var endPoint: String { get }

    var task: HTTPTask { get }
    var method: HTTPMethod { get }
}
