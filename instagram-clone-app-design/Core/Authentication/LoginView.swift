//
//  LoginView.swift
//  instagram-clone-app-design
//
//  Created by Sevde Aydın on 18.06.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            Spacer()
            Image("insta-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 100)
            
            VStack(spacing: 8) {
                TextField("Phone number, username or email", text: $email)
                    .autocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureFieldWithButton("Password", text: $password)
            }
            
            LoginButton(text: "Login")
                .padding(.top, 10)
            
            Button {
                
            } label: {
                Text("Forget Passoword?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 20)
            }.frame(maxWidth: .infinity, alignment: .trailing)
            
            HStack {
                Rectangle()
                    .frame(height: 0.5)
                Text("OR")
                Rectangle()
                    .frame(height: 0.5)
            }
            .foregroundColor(.gray)
            .padding(.horizontal, 24)
            
            HStack {
                Text("Continue with FaceBook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemBlue))
            }.padding(.top, 8)
            
            Spacer()
            Divider()
            NavigationLink {
                AddEmailView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack {
                    Text("Don't you have an account?")
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
            }.padding(.vertical)
        }
    }
}

#Preview {
    LoginView()
}
