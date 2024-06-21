//
//  LoginButton.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 18.06.2024.
//

import SwiftUI

struct LoginButton: View {
    var text = ""
    @State var action: () -> Void = {}
    var body: some View {
        Button{
            action()
        } label: {
            Text("\(text)")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.wB)
                .padding(.vertical, 12)
                
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(.systemBlue))
        .cornerRadius(10)
        .padding(.horizontal, 24)
    }
}

