//
//  ElementDetailView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/9/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import SwiftUI

struct ElementDetailView: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Element Name")
                    .font(.largeTitle)
                    .bold()
                Text("En")
                    .font(.headline)
                    .foregroundColor(.secondary)
            }.padding(.leading)
            Image("hydrogen")
                .resizable()
                .scaledToFit()
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            Divider()
            
            VStack {
                Text("Element Information")
                    .font(.title)
                    .bold()
                    .padding()
                ScrollView {
                    HStack {
                        Text("Density:").bold()
                        Spacer()
                        Text("Some Density")
                    }.padding(10)
                    HStack {
                        Text("Melting Point:").bold()
                        Spacer()
                        Text("Some Melting Point")
                    }.padding(10)
                    HStack {
                        Text("Boiling Point").bold()
                        Spacer()
                        Text("Some Boiling Point")
                    }.padding(10)
                    HStack {
                        Text("Sublimation Point:").bold()
                        Spacer()
                        Text("Some Sublimation Point")
                    }.padding(10)
                    HStack {
                        Text("Electronegativity:").bold()
                        Spacer()
                        Text("Some Electronegativity")
                    }.padding(10)
                    HStack {
                        Text("Electron Config:").bold()
                        Spacer()
                        Text("Some Electron Config")
                    }.padding(10)
                    HStack {
                        Text("Electronegativity:").bold()
                        Spacer()
                        Text("Some Electronegativity")
                    }.padding(10)
                    HStack {
                        Text("First Ionization Energy:").bold()
                        Spacer()
                        Text("Some First Ionization Energy")
                    }.padding(10)
                    HStack {
                        Text("Atomic Mass:").bold()
                        Spacer()
                        Text("Some Electronegativity")
                    }.padding(10)
                }
            }
        }
    }
}

struct ElementDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ElementDetailView()
    }
}
