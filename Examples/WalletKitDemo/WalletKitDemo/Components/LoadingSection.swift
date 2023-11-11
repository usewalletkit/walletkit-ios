//
//  LoadingSection.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/11.
//

import SwiftUI

struct LoadingSection: View {

    @State private var isRotating = 0.0

    var body: some View {
        Section {
            HStack(alignment: .top) {
                Image(systemName: "arrow.triangle.2.circlepath")
                    .frame(width: 20)
                    .foregroundColor(.secondary)
                    .rotationEffect(.degrees(isRotating))
                    .onAppear {
                        withAnimation(
                            .linear(duration: 1)
                            .repeatForever(autoreverses: false)
                        ) {
                            isRotating = 360.0
                        }
                    }
                Text("Loading...")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct LoadingSection_Previews: PreviewProvider {

    static var previews: some View {
        LoadingSection()
    }
}
