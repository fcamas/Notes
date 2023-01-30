//
//  LoginView.swift
//  Notes
//
//  Created by Fredy Camas on 01/23/23.
//

import SwiftUI

struct LoginView: View {
    @State private var text: String = ""
    var body: some View {
        Image("fiestaLogo")
            .resizable()
            .frame(width: 100, height: 120)
        
        VStack(alignment: .leading){
            Text("Enter username")
                .offset(x:0, y: 8)
            
            TextField("", text: $text).font(.system(size: 30))
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
                .padding(.bottom, 16)
            
            Text("Enter password")
                .offset(x:0, y: 8)
            
            TextField("", text: $text).font(.system(size: 30))
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
                .padding(.bottom, 16)
            
        }.padding(.all, 32)
        
        VStack{
            Text("Login")
                .foregroundColor(Color.black.opacity(0.7))
                .frame(maxWidth: .infinity)
                .padding()
                .background(.clear)
                .cornerRadius(10)
                .font(.title)
            HStack{
                Text("Sign up")
                Rectangle()
                    .frame(width: 1, height: 20)
                    .foregroundColor(.gray)
                
                Text("Privay & Terms")
                Rectangle()
                    .frame(width: 1, height: 20)
                    .foregroundColor(.gray)
                Text("Contact us")
            }
            
        }.padding(.bottom, 100)
        Spacer()
    }
}

#Preview {
    LoginView()
}
