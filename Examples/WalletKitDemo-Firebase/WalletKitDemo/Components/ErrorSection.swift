//
//  ErrorSection.swift
//  WalletKitDemo
//
//  Created by Pol Chen on 2023/11/11.
//

import SwiftUI

struct ErrorSection: View {

    let message: String

    var body: some View {
        Section {
            HStack(alignment: .top) {
                Image(systemName: "exclamationmark.bubble.fill")
                    .foregroundColor(.red)
                    .frame(width: 20)
                Text("Error: \(message) Please try again.")
                    .foregroundColor(.red)
            }
        }
    }
}

struct ErrorSection_Previews: PreviewProvider {

    static var previews: some View {
        ErrorSection(message: "Something went wrong.")
    }
}
