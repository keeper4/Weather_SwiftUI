//
//  URLParameterEncoder.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import Foundation

struct URLParameterEncoder {
    func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        guard let url = urlRequest.url else { throw NetworkError.missingURL }

        guard
            var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false),
            parameters.isEmpty == false
        else { throw NetworkError.encodingError }

        urlComponents.queryItems = [URLQueryItem]()

        parameters.forEach { (key, value) in
            urlComponents.queryItems?.append(
                .init(name: key,
                      value: "\(value)".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
            )
        }

        urlRequest.url = urlComponents.url
    }
}
