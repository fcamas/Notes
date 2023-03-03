//
//  BackButton.swift
//  Notes
//
//  Created by Fredy Camas on 03/02/23.
//

import SwiftUI

struct BackBtn: View {
    
    let buttonTap: () -> Void
    var color: Color?
    
    var body: some View {
        Button(action: {
            buttonTap()
        }, label: {
            Image(K.backBtn)
                .resizable()
                .renderingMode(color != nil ? .template : .original)
                .foregroundColor(color)
                .scaledToFit()
                .frame(width: 24, height: 24, alignment: .center)
        })
    }
}
