//
//  HTTPTask.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

typealias Parameters = [String: Any]

enum HTTPTask {
    case request
    case requestBody(Data)
    case requestUrlParameters(Parameters)
}
