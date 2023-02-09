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
                Image(uiImage: generateQRCode(from: "\(name)\n\(email)"))
                    .resizable()
                    .interpolation(.none)
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
            }
        }
    }
    
    func generateQRCode(from string: String) -> UIImage {
        filter.message = Data(string.utf8)
        
        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
        
      
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView()
    }
}











