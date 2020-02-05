//
//  ImageTextView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/30/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import SwiftUI

struct ImageTextView: View {
    var imageName: String
    var body: some View {
        if let img = UIImage(named: imageName.lowercased()) {
            return AnyView(Image(uiImage: img)
                .resizable()
                .scaledToFit()
                .padding())
        } else {
            return AnyView(Text("(no images of \(imageName))")
                .italic()
                .padding())
        }
        
    }
}



struct ImageTextView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTextView(imageName: "hydrogen")
    }
}
