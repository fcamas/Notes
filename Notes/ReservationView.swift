//
//  ReservationView.swift
//  Notes
//
//  Created by Fredy Camas on 02/07/23.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct ReservationView: View {
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    @State var name = "Fredy"
    @State var email = "test1@gmail.com"
    
    var body: some View {
        ScrollView{
            VStack{
                
                
            }
        }
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}











