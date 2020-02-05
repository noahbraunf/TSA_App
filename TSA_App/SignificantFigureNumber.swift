//
//  SignificantFigureNumber.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 2/1/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import Foundation

struct SignificantFigureNumber {
    var rawNumber: String
    
    var significantFigures: Int {
        let numLength = rawNumber.count
        var lastZeroes = 0
        
        if rawNumber.contains(".") {
            return numLength - self.leadingZeros - 1
        } else {
            for c in rawNumber.reversed() {
                if c == "0" {
                    lastZeroes += 1
                } else {
                    break
                }
            }
        }
        return numLength - self.leadingZeros - lastZeroes
    }
    
    var leadingZeros: Int {
        var firstZeros = 0
        for c in rawNumber {
            if c == "0" {
                firstZeros += 1
            } else if c != "." {
                break
            }
        }
        return firstZeros
    }
    
    var sigFigsAfter: Int {
        return 0
    }
    
    static func + (first: SignificantFigureNumber, last: SignificantFigureNumber) -> SignificantFigureNumber {
        // TODO: Implement Later
        return SignificantFigureNumber(rawNumber: "")
    }
    
    static func - (first: SignificantFigureNumber, last: SignificantFigureNumber) -> SignificantFigureNumber {
        // TODO: Implement Later
        return SignificantFigureNumber(rawNumber: "")
    }
    
    static func * (first: SignificantFigureNumber, last: SignificantFigureNumber) -> SignificantFigureNumber {
        // TODO: Implement Later
        return SignificantFigureNumber(rawNumber: "")
    }
    
    static func / (first: SignificantFigureNumber, last: SignificantFigureNumber) -> SignificantFigureNumber {
        // TODO: Implement Later
        return SignificantFigureNumber(rawNumber: "")
    }
    
}

func roundSigFig() {
    // TODO: Implement Later
}
