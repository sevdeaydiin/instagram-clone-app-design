//
//  EditProfileDetailView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 28.06.2024.
//

import SwiftUI

struct EditProfileDetailView: View {
    
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            VStack {
                TextField(placeholder, text: $text)
                Divider()
            }
        }.font(.subheadline)
            .frame(height: 36)
    }
}

#Preview {
    EditProfileDetailView(title: "Fullname", placeholder: "Fullname", text: .constant(""))
}
