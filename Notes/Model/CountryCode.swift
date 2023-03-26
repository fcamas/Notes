//
//  CountryCode.swift
//  Notes
//
//  Created by Fredy Camas on 10/26/23.
//

import Foundation

struct CountryCode: Hashable, Codable {
    var code = "+1"
    var name: String
    var dial_code: String
    
    var id: String {
        return code
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(code)
    }
    func flag() -> String {
        let base : UInt32 = 127397
        var s = ""
        for v in self.code.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }
    var jsonData: String {
        let jsonData = try! JSONEncoder().encode(self)
        return jsonString
    }
}
