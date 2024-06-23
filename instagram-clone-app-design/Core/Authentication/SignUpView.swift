//
//  SignUpView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 21.06.2024.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegisterViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome Sevde!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.tabBarItem)
                
                Text("Click below to complete registration and start using Instagram.")
                    .font(.footnote)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                Button{
                    Task {
                        try await viewModel.createUser()
                    }
                    //LoginView().navigationBarBackButtonHidden()
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
    SignUpView()
        .environmentObject(RegisterViewModel())
}
