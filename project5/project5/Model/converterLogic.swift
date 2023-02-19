//
//  converterLogic.swift
//  project5
//
//  Created by Kenneth Barker on 2/19/23.
//

import Foundation

struct converterLogic {
    
    var dollar = 0.0
    var euro = 0.0
    var yen = 0.0
    var poundM = 0.0
    var sheckle = 0.0
    
    var euroString = ""
    var yenString = ""
    var poundString = ""
    var sheckleString = ""
    
    mutating func findConverts(dollar : Double) {
        euro = dollar * 0.93
        yen = dollar * 134.33
        poundM = dollar * 0.83
        sheckle = dollar * 3.55
    }
    
    mutating func euroStringFind() -> String {
        euroString = String(format:"Amount in Euros: %.2f", euro)
        return euroString
    }
    
    mutating func yenStringFind() -> String {
        yenString = String(format:"Amount in Yen: %.2f", yen)
        return yenString
    }
    
    mutating func poundStringFind() -> String {
        poundString = String(format:"Amount in Pounds: %.2f", poundM)
        return poundString
    }
    
    mutating func sheckleStringFind() -> String {
        sheckleString = String(format:"Amount in Shekels: %.2f", sheckle)
        return sheckleString
    }
}
