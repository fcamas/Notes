//
//  BigButtonView.swift
//  Notes
//
//  Created by Fredy Camas on 02/26/23.
//

import SwiftUI

struct BigButton: View {
    
    @State var titleText: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color(K.btn_black), lineWidth: 1)
            .frame(width: UIScreen.main.bounds.width - 50, height: 60)
           // .foregroundColor(Color().opacity(0.5))
            .overlay(
                Text(titleText)
                    .foregroundColor(Color(K.txt_black))
                    .padding(.vertical)
                    .font(Font.custom(K.lifeFont, size: 18))
            )
    }
}


struct BigButton_Previews: PreviewProvider {
    static var previews: some View {
        BigButton(titleText: "big button fill")
    }
}
