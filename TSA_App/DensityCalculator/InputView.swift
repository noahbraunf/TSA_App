//
//  InputView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 2/5/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import SwiftUI

struct InputView: View {
    @ObservedObject var mass = FilterInput()
    @ObservedObject var volume = FilterInput()
    
    var body: some View {
        VStack {
            VStack {
                TextField("mass (g)", text: $mass.text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("volume (cm^3)", text: $volume.text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            
            Text(Density(mass: mass.text, volume: volume.text).density)
                .bold()
                .font(.title)
        }
    }
}

struct Density {
    var mass, volume: String
    var density: String {
        guard let m = Double(mass), let v = Double(volume) else {
            return ""
        }
        
        if v.isEqual(to: 0) {
            return "Invalid input"
        }
        
        return "Density: \(String(round(1000 * (m / v)) / 1000)) g/cm^3"
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
