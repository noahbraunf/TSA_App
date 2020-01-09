//
//  BiologyPageView.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/3/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//
import SwiftUI

struct BiologyPageView: View {
    var title: String
    var description: String
    var image: Image
    
    init(title: String, description: String, image: Image) {
        <#statements#>
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 30))
                .padding(.all)
        }
        
    }
}

struct BiologyPageView_Previews: PreviewProvider {
    static var previews: some View {
        BiologyPageView
    }
}
