//
//  ProgressBar.swift
//  Notes
//
//  Created by Fredy Camas on 03/05/23.
//

import SwiftUI

struct ProgressBar: View {
    @State var range: ClosedRange<Int>
    @State var fill: Int
    var body: some View {
        ZStack(alignment: .leading){
            GeometryReader{ geo in
                RoundedRectangle(cornerRadius: 4)
                    .frame(height:8)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(range: 0...5, fill: 1)
    }
}

