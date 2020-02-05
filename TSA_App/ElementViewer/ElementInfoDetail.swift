//
//  ElementDataDetailView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/30/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import SwiftUI

struct ElementInfoDetail: View {
    var description: String
    var data: String
    
    var body: some View {
        HStack {
            Text("\(description):").bold()
            Spacer()
            Text(data)
        }.padding(10)
    }
}

struct ElementDataDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ElementInfoDetail(description: "Is radioactive", data: "\(2.11)")
    }
}
