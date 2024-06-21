//
//  CreatePasswordView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 18.06.2024.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Create a password")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.tabBarItem)
                
                Text("We can remember the password, so you won't need to enter it on your iCloud devices.")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Password", text: $password)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                NavigationLink{
                    SignUpView().navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.wB)
                        .padding(.vertical, 12)
                        
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.horizontal, 24)
                
                //LoginButton(text: "Next", action: { CreatePasswordView().navigationBarBackButtonHidden(true) })
                Spacer()

            }
            .padding(.top, 20)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
        }
    }
}

#Preview {
    CreatePasswordView()
}
