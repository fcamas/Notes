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
  
        }.padding(.all, 32)
    }
}

#Preview {
    LoginView()
}
