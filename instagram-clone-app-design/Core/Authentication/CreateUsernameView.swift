//
//  CreateUsernameView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 18.06.2024.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Create username")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.tabBarItem)
                
                Text("Pick a username for your new account. You can always change it later.")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Username", text: $username)
                    .autocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 10)
                
                NavigationLink{
                    CreateUsernameView().navigationBarBackButtonHidden(true)
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
    CreateUsernameView()
}
