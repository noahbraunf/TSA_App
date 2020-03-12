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
    @State private var searchText = ""
    
    var body: some View {
        
        VStack {
            SearchBar(text: $searchText)
        
            List {
                ForEach(fetcher.elements.filter{$0.name.lowercased().contains(searchText.lowercased()) || String($0.id).hasPrefix(searchText) || searchText.trimmingCharacters(in: CharacterSet.whitespaces) == ""}, id: \.self) {
                    searchText in ElementListElement(id: searchText.id, name: searchText.name, symbol: searchText.symbol, atomicMass: searchText.atomicMass, electronConfig: searchText.formattedEConfig, meltingPoint: searchText.meltingPoint, boilingPoint: searchText.boilingPoint, sublimationPoint: searchText.sublimationPoint, density: searchText.density, electronegativity: searchText.electronegativity, atomicRadius: searchText.atomicRadius, firstIonizationEnergy: searchText.firstIonizationEnergy, radioactive: searchText.radioactive, naturallyOccurring: searchText.naturallyOccurring)
                }
            }.gesture(DragGesture().onChanged { _ in
                UIApplication.shared.endEditing(true)
            })
            
        }
        
    }
}

struct ElementListView_Previews: PreviewProvider {
    static var previews: some View {
        ElementListView()
    }
}
