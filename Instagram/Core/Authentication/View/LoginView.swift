//
//  LoginView.swift
//  Instagram
//
//  Created by Isidro Chávez on 2024-04-28.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                
                Spacer()
                //logo
                Text("Instagram")
                    .font(.custom("SnellRoundhand", size: 60))
                    .fontWeight(.bold)
                
                // text fields
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                        
                    
                    SecureField("Enter your email", text: $password)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                }
                
                Button{
                    print("Show forgot password")
                } label: {
                    Text ("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                Button{
                    print("Login")
                } label: {
                    Text ("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding(.top)
                        
                    
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2)  - 40, height: 0.5)
                    
                    Text("OR")
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2)  - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("facebook-logo")
                        .resizable()
                        .frame(width: 20, height: 20)
                        
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    AddEmailView()
                } label :{
                    HStack(spacing: 3) {
                        Text ("Don't have an account?")
                        
                        Text ("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
                
            }
        }
       
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
