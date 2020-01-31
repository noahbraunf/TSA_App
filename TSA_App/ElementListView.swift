//
//  ElementListView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/29/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import SwiftUI

struct ElementListView: View {
    @ObservedObject var fetcher = ElementFetcher()
    var body: some View {
        
            List(fetcher.elements) { element in
                NavigationLink(destination: ElementDetailView(id: element.id, name: element.name, symbol: element.symbol, atomicMass: element.atomicMass, electronConfig: element.formattedEConfig, meltingPoint: element.meltingPoint, boilingPoint: element.boilingPoint, sublimationPoint: element.sublimationPoint, density: element.density, electronegativity: element.electronegativity, atomicRadius: element.atomicRadius, firstIonizationEnergy: element.firstIonizationEnergy, radioactive: element.radioactive, naturallyOccurring: element.naturallyOccurring)) {
                    return HStack {
                    
                    Text("\(element.name)").padding(.leading)
                        Spacer()
                        Text("\(element.id)").padding(.trailing)
                    }
                }.navigationBarTitle(Text("Element"), displayMode: .large)
            }
        
    }
}

struct ElementListView_Previews: PreviewProvider {
    static var previews: some View {
        ElementListView()
    }
}
