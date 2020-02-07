//
//  DensityCalculatorView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 2/1/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import SwiftUI

struct DensityCalculatorView: View {
    @State var sigFigEnabled: Bool = false
    @State var mass: String = ""
    @State var volume: String = ""
    
    var body: some View {
        InputView().navigationBarTitle("Density Calculator", displayMode: .inline)
            /*Toggle(isOn: $sigFigEnabled) {
                Text("Significant Figures")
            }*/
    }
}



struct DensityCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        DensityCalculatorView()
    }
}
