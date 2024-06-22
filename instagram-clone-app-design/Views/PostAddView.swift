//
//  PostAddView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 22.06.2024.
//

import SwiftUI
import PhotosUI

struct PostAddView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @State private var photoItem: PhotosPickerItem? //secilen foto tutulacak
    @StateObject var viewModel = PostAddViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                }label: {
                    Image(systemName: "multiply")
                        .imageScale(.large)
                        .foregroundStyle(Color.tabBarItem)
                }
                Spacer()
                Text("New Post")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.tabBarItem)
                Spacer()
                Button {
                    
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }.padding(.horizontal)
            
            HStack {
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                TextField("Enter your caption", text: $caption, axis: .vertical)
                    
            }.padding(.trailing)
            
            Spacer()
        }
        .onAppear() {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    PostAddView(tabIndex: .constant(0))
}
