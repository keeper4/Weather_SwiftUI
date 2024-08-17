//
//  CityNetworkConfig.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

enum CityNetworkConfig: NetworkConfig {
    case detailsByCity(String)
    
    var path: String {
        "current"
    }
    
    var endPoint: String {
        return ""
    }
    
    var task: HTTPTask {
        switch self {
        case .detailsByCity(let city):
            return .requestUrlParameters(["query": city, "access_key": "3fcb0b74e873e9089bcbc892b92bd7a7"])
        }
    }
    
    var method: HTTPMethod {
        .get
    }
}
