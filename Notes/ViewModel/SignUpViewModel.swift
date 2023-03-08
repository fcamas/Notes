//
//  SignUpViewModel.swift
//  Notes
//
//  Created by Fredy Camas on 03/08/23.
//

import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var phoneNumber: String = ""
    @Published var open: Bool = false
    
}
