//
//  ElementDetailView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/9/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import SwiftUI

struct ElementDetailView: View {
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
        let informationList: [ElementInfoDetail] = [
            ElementInfoDetail(description: "Atomic Number", data: "\(id)"),
            ElementInfoDetail(description: "Atomic Mass", data: "\(atomicMass) amu"),
            ElementInfoDetail(description: "Atomic Radius", data: unwrapData(data: atomicRadius, unit: "pm")),
            // --MARK: Electron Stuff
            ElementInfoDetail(description: "Electron Configuration", data: electronConfig),
            ElementInfoDetail(description: "Electronegativity", data: unwrapData(data: electronegativity, unit: nil)),
            ElementInfoDetail(description: "First Ionization Energy", data: unwrapData(data: firstIonizationEnergy, unit: "kJ/mol")),
            // --MARK: Density & Temp
            ElementInfoDetail(description: "Density", data: unwrapData(data: density, unit: "g/cm³")),
            ElementInfoDetail(description: "Melting Point", data: unwrapData(data: meltingPoint, unit: "°K")),
            ElementInfoDetail(description: "Boiling Point", data: unwrapData(data: boilingPoint, unit: "°K")),
            ElementInfoDetail(description: "Sublimation Point", data: unwrapData(data: sublimationPoint, unit: "°K")),
            // --MARK: Other
            ElementInfoDetail(description: "Radioactive", data: formatBool(data: radioactive)),
            ElementInfoDetail(description: "Naturally Occurring", data: formatBool(data: naturallyOccurring))
        ]
        return VStack {
            ImageTextView(imageName: name)
            Divider()
            Text("\(name) (\(symbol)) Information")
                .font(.title)
                .bold()
            Divider()
            ScrollView {
                ForEach(informationList, id: \.description) { info in
                    info.body
                }
            }
        }.navigationBarTitle(Text(name), displayMode: .inline)
    }
}

private func unwrapData(data: Double?, unit: String?) -> String {
    guard let d = data else {
        return "Unknown/Not Possible"
    }
    
    if let u = unit {
        return "\(d) \(u)"
    } else {
        return "\(d)"
    }
}

private func formatBool(data: Bool) -> String {
    return data ? "Yes" : "No"
}

struct ElementDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ElementDetailView(id: 1, name: "Hydrogen", symbol: "H", atomicMass: 1.008, electronConfig: "1s\u{00B9}", meltingPoint: 13.99, boilingPoint: 20.271, sublimationPoint: nil, density: 0.00008988, electronegativity: 2.20, atomicRadius: 31, firstIonizationEnergy: 1320.0, radioactive: false, naturallyOccurring: true)
    }
}
