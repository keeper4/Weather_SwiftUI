//
//  CurrentView.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 19.08.2024.
//

import SwiftUI

struct CurrentView: View {
    
    var viewModel: CurrentViewModel
    
    var body: some View {
        VStack(spacing: Constants.Stack.VStackSpacing) {
            HStack(spacing: Constants.Stack.HStackSpacing) {
                AvatarAsyncImage(size: Constants.imageSize,
                                 urlString: viewModel.weatherURL?.absoluteString)
                Text(viewModel.time)
                    .font(.title2)
            }
            HStack(spacing: Constants.Stack.HStackSpacing) {
                VStack(alignment: .center) {
                    Text(LocalizedKey.CurrentView.temperature)
                    Text(viewModel.temperature)
                }
                VStack(alignment: .center) {
                    Text(LocalizedKey.CurrentView.humidity)
                    Text(viewModel.humidity)
                }
            }
            .font(.title3)
            HStack(spacing: Constants.Stack.HStackSpacing) {
                VStack(alignment: .center) {
                    Text(LocalizedKey.CurrentView.windSpeed)
                    Text(viewModel.windSpeed)
                }
                VStack(alignment: .center) {
                    Text(LocalizedKey.CurrentView.windDir)
                    Text(viewModel.windDir)
                }

            }
            .font(.title3)
        }
    }
}

#Preview {
    CurrentView(viewModel: .init(time: "2:30pm", temperature: "54F", windSpeed: "8", windDir: "H", humidity: "35%"))
        .preferredColorScheme(.dark)
}

private enum Constants {
    
    static let imageSize: CGFloat = 120
    
    enum Stack {
        static let VStackSpacing: CGFloat = 20
        static let HStackSpacing: CGFloat = 20
    }
}
