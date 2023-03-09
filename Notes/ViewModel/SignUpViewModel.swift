//
//  SignUpViewModel.swift
//  Notes
//
//  Created by Fredy Camas on 03/08/23.
//

import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    var phoneNumberStr: String  = "222"
    @Published var verificationCode: String? = "+1"
    @Published var phoneNumber: String = ""
    @Published var open: Bool = false
    
}
