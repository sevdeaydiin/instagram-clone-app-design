//
//  UploadPostView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 22.06.2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @State private var photoItem: PhotosPickerItem? //secilen foto tutulacak
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                }label: {
                    Text("Cancel")
                }
                Spacer()
                Text("New Post")
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }.padding(.horizontal)
            
            HStack {
                Image("image")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipped()
                
                TextField("Enter your caption", text: $caption)
            }
            
            Spacer()
        }
        .onAppear() {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $photoItem)
    }
}

#Preview {
    UploadPostView()
}
