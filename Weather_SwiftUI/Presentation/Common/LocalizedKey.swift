//
//  Constants.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 17.08.2024.
//

import SwiftUI

enum LocalizedKey {

    enum CitysView {
        static let title = LocalizedStringKey("CitysView.title")
    }
    
    enum CurrentView {
        static let temperature = LocalizedStringKey("CurrentView.temperature")
        static let windSpeed = LocalizedStringKey("CurrentView.windSpeed")
        static let windDir = LocalizedStringKey("CurrentView.windDir")
        static let humidity = LocalizedStringKey("CurrentView.humidity")
    }
    
    enum ErrorMessage {
        static let error = LocalizedStringKey("Error")

        static let unknownError = "UnknownError"
        static let invalidUsername = "InvalidUsername"
        static let invalidLink = "InvalidLink"

        static let loginFailed = "LoginFailed"
        static let registrationFailed = "RegistrationFailed"
        static let incorrectLink = "IncorrectLink"

        enum Network {
            static let missingURL = "MissingURL"
            static let noConnect = "NoConnect"
            static let invalidResponse = "InvalidResponse"
            static let invalidData = "InvalidData"
            static let decodingError = "DecodingError"
            static let encodingError = "EncodingError"
            static let requestFailed = "RequestFailed"
        }
    }
}
