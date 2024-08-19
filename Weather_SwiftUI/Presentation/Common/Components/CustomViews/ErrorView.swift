//
//  ErrorView.swift
//  Weather_SwiftUI
//
//  Created by Oleksandr Chyzh on 19.08.2024.
//

import SwiftUI

struct ErrorView: View {

    let message: String

    var body: some View {
        VStack {
            VStack(spacing: Constants.contentSpacing) {
//                    Image()
//                    .resizable()
//                    .frame(
//                        width: Constants.imageSize,
//                        height: Constants.imageSize
//                    )

                Text(LocalizedStringKey(message))
                    .font(.body.weight(.medium))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
        }
        .offset(y: Constants.offsetY)
        //.backgroundColor()
    }

    private enum Constants {
        static let offsetY: CGFloat = -50
        static let imageSize: CGFloat = 320
        static let contentSpacing: CGFloat = 45
    }
}
