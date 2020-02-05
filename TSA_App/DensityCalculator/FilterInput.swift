//
//  FilterInput.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 2/5/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import Foundation
import Combine

class FilterInput: ObservableObject {
    @Published var text = ""
    private var subCancellable: AnyCancellable!
    private var validCharSet = CharacterSet(charactersIn: "1234567890.")
    
    init() {
        subCancellable = $text.sink { val in
            if val.rangeOfCharacter(from: self.validCharSet.inverted) != nil {
                DispatchQueue.main.async {
                    self.text = String(self.text.unicodeScalars.filter {
                        self.validCharSet.contains($0)
                    })
                }
            }
        }
    }
    
    deinit {
        subCancellable.cancel()
    }
}
