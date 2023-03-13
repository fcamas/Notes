//
//  SignUpViewModel.swift
//  Notes
//
//  Created by Fredy Camas on 03/08/23.
//

import SwiftUI

struct CountryCode{
    var code = "+1"
}

class SignUpViewModel: ObservableObject {
    var phoneNumberStr: String  = "222"
    @Published var verificationCode: String? = "+1"
    @Published var phoneNumber: String = ""
    @Published var open: Bool = false
    @Published var nextPage: Bool = false
    @Published var finished: Bool = false
    @Published var visibleError: Error? = nil
    var countryCodes: [CountryCode] = []
    
    func selectCountry(_ country: CountryCode) {
        verificationCode = country.code
    }
    
}
