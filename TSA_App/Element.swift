//
//  Element.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/8/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import Foundation
import Combine

struct Element: Decodable, Identifiable, Hashable {
    
    // --MARK: Element JSON Data
    // --TODO: Add common isotopes
    public var id: Int
    public var name: String
    public var symbol: String
    public var atomicMass: Double
    public var eConfig: [String]
    public var meltingPoint: Double?
    public var boilingPoint: Double?
    public var sublimationPoint: Double?
    public var density: Double?
    public var electronegativity: Double?
    public var atomicRadius: Double?
    public var firstIonizationEnergy: Double?
    public var radioactive: Bool
    public var naturallyOccurring: Bool
    
    // --MARK: Formatted stuff
    public var formattedEConfig: String {
        let blocks: [Character] = ["s", "p", "d", "f"]
        var tempFormatting = [String]()
        for orbital in eConfig {
            tempFormatting.append(exponentize(str: orbital, matchWith: blocks))
        }
        return tempFormatting.joined(separator: " ")
    }
}

func exponentize(str: String, matchWith superscriptTokens: [Character]) -> String {
    
    let supers = [
        "0": "\u{2070}",
        "1": "\u{00B9}",
        "2": "\u{00B2}",
        "3": "\u{00B3}",
        "4": "\u{2074}",
        "5": "\u{2075}",
        "6": "\u{2076}",
        "7": "\u{2077}",
        "8": "\u{2078}",
        "9": "\u{2079}"]
    
    var newStr = ""
    var isExp = false
    for (_, char) in str.enumerated() {
        if superscriptTokens.contains(char) {
            isExp = true
            newStr.append(char)
        } else {
            if isExp {
                let key = String(char)
                if supers.keys.contains(key) {
                    newStr.append(Character(supers[key]!))
                } else {
                    isExp = false
                    newStr.append(char)
                }
            } else {
                newStr.append(char)
            }
        }
    }
    return newStr
}
