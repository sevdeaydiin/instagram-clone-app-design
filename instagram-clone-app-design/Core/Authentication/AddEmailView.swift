//
//  AddEmailView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 18.06.2024.
//

import SwiftUI

struct AddEmailView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegisterViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Add your email")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.tabBarItem)
                
                Text("You'll use this email to sign in to your account")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Email", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
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
                //LoginButton(text: "Next", action: { CreateUsernameView().navigationBarBackButtonHidden(true) })
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
    AddEmailView()
        .environmentObject(RegisterViewModel())
}
