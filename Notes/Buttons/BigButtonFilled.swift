//
//  BigButtonFilled.swift
//  Notes
//
//  Created by Fredy Camas on 02/27/23.
//

import SwiftUI

struct BigButtonFill: View {
    @State var titleText: String
    var body: some View {
       
        RoundedRectangle(cornerRadius: 20)
           //.stroke(Color(hexString: K.primaryBlack), lineWidth: 1)
            .frame(width: UIScreen.main.bounds.width - 50, height: 60)
            .foregroundColor(Color(K.btn_black))
            .overlay(
                Text(titleText)
                    .foregroundColor(Color(K.txt_white))
                    .padding(.vertical)
                    .font(Font.custom(K.lifeFont, size: 18))
            )
    }
}

struct BigButtonFill_Previews: PreviewProvider {
    static var previews: some View {
        BigButtonFill(titleText: "big button ")
    }
}
