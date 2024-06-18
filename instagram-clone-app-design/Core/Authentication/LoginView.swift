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
            
            VStack {
                TextField("Phone number, username or email", text: $email)
                    .autocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            Button{} label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.tabBarItem)
                    .padding()
                    
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .overlay (
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color.tabBarItem, lineWidth: 1)
            ).padding(.horizontal, 24)
            
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
                Text("Sign Up")
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
