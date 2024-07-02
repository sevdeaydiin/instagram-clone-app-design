//
//  EditProfileView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 28.06.2024.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    
    @StateObject var viewModel: EditProfileViewModel
    @Environment(\.dismiss) var dismiss
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: EditProfileViewModel(user: user))
    }
    
    var body: some View {
        VStack {
            
            //toolbar
            VStack {
                HStack {
                    Button("Cancel") { dismiss() }
                    Spacer()
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Spacer()
                    Button("Done"){
                        Task {
                            try await viewModel.updateUserData()
                            dismiss()
                        }
                    }
                    .font(.subheadline)
                    .fontWeight(.bold)
                }.padding()
                Divider()
            }
            
            PhotosPicker(selection: $viewModel.selectedImage) {
                VStack {
                    
                    if let image = viewModel.profileImage {
                        image
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .foregroundStyle(.gray)
                    } else {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .foregroundStyle(.gray)
                    }

                    Text("Edit profile picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Divider()
                }
            }.padding(.vertical, 8)
            
            EditProfileDetailView(title: "Fullname", placeholder: "Fullname", text: $viewModel.fullname)
            EditProfileDetailView(title: "Bio", placeholder: "Bio", text: $viewModel.bio)
            
            Spacer()
        }
    }
}

#Preview {
    EditProfileView(user: User.MOCK_USER[0])
}
