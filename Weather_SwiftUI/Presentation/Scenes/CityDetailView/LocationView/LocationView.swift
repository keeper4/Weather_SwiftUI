//
//  LocationView.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 19.08.2024.
//

import SwiftUI

struct LocationView: View {
    
    var viewModel: LocationViewModel
    
    var body: some View {
        VStack() {
            Text(viewModel.city)
                .font(.title)
            Text(viewModel.country)
                .font(.title2)
        }
    }
}

#Preview {
    LocationView(viewModel: .init(city: "Kyiv", country: "Ukraine"))
        .preferredColorScheme(.dark)
}
