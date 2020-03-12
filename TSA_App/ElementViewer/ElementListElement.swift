//
//  ElementListElement.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 3/7/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import SwiftUI

struct ElementListElement: View {
    let id: Int
    let name, symbol: String
    let atomicMass: Double
    let electronConfig: String
    var meltingPoint: Double?
    var boilingPoint: Double?
    var sublimationPoint: Double?
    var density: Double?
    var electronegativity: Double?
    var atomicRadius: Double?
    var firstIonizationEnergy: Double?
    var radioactive: Bool
    var naturallyOccurring: Bool
    
    var body: some View {
        NavigationLink(destination: ElementDetailView(id: self.id, name: self.name, symbol: self.symbol, atomicMass: self.atomicMass, electronConfig: self.electronConfig, meltingPoint: self.meltingPoint, boilingPoint: self.boilingPoint, sublimationPoint: self.sublimationPoint, density: self.density, electronegativity: self.electronegativity, atomicRadius: self.atomicRadius, firstIonizationEnergy: self.firstIonizationEnergy, radioactive: self.radioactive, naturallyOccurring: self.naturallyOccurring)) {
            HStack {
                Image(self.name.lowercased()).resizable().frame(width: 50, height: 50)
                Text(self.name)
                    .padding(.leading)
                Spacer()
                Text("\(self.id)")
                    .padding(.trailing)
            }
        }
    }
}

struct ElementListElement_Previews: PreviewProvider {
    static var previews: some View {
        ElementListElement(id: 1, name: "Hydrogen", symbol: "H", atomicMass: 1.008, electronConfig: "1s\u{00B9}", meltingPoint: 13.99, boilingPoint: 20.271, sublimationPoint: nil, density: 0.00008988, electronegativity: 2.20, atomicRadius: 31, firstIonizationEnergy: 1320.0, radioactive: false, naturallyOccurring: true)
    }
}
