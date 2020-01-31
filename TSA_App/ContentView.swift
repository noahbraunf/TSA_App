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
            NavigationView {
                        
                    VStack {
                        Text("Utilities").font(.largeTitle)
                        Divider()
                        NavigationLink(destination: ElementListView()) {
                            Text("Element Encyclopedia")
                                .buttonStyle(PlainButtonStyle())
                        }.navigationBarTitle(Text("Chemistry Assistant"))
                        
                    }.padding(.init(top: 0, leading: 0, bottom: 100, trailing: 0))
                }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
