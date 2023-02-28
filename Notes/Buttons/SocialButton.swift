//
//  SocialButton.swift
//  Notes
//
//  Created by Fredy Camas on 02/28/23.
//


import SwiftUI

struct SocialSignUpButtons: View {
    var image:String
    var text:String
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 60)
                .foregroundColor(.clear).opacity(0.5)
                .overlay( HStack{
                    Image(image)
                        .resizable()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(.white)
                    
                })
        }
    }
}
