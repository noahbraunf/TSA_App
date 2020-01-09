//
//  ContentView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 12/31/19.
//  Copyright © 2019 Noah Braunfeld. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var fetcher = ElementFetcher()
    
    var body: some View {
        VStack {
            HStack(spacing: 40){
                Text("化学")
                    .font(.system(size: 40))
                    .font(.headline)
                Text("Chemistry Assistant")
                    .font(.headline)
            }.padding(.top)
            Spacer()
            
            List(fetcher.elements) { element in
                VStack {
                    HStack {
                        Text("\(element.name)")
                            .font(.system(size: 20))
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("Symbol: \(element.symbol)")
                                .font(.body)
                                .foregroundColor(.gray)
                            Text("Atomic Number: \(element.id)")
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
