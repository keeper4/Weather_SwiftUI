//
//  ImageCache.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 19.08.2024.
//

import SwiftUI

@MainActor
final class ImageCache {
    static private var cache = [URL: Image]()
    static subscript(url: URL?) -> Image? {
        get {
            guard let url else { return nil }
            return cache[url]
        }
        set {
            guard let url else { return }
            cache[url] = newValue
        }
    }
}
