//
//  Element.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/8/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import Foundation
import Combine

struct Element: Decodable, Identifiable {
    public var id: Int
    public var name: String
    public var symbol: String
//    public var atomicMass: Double
//    public var atomicRadius: Double
//    public var density: Double
//    public var eConfig: [Int]
    
    /*
     -- electron config layout
     [2, 2, 6, ...] -> 1s2 2s2 2p6 ...
     */
}
