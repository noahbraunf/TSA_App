//
//  ElementFetcher.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 1/8/20.
//  Copyright © 2020 Noah Braunfeld. All rights reserved.
//

import Foundation
import Combine

public class ElementFetcher: ObservableObject {
    @Published var elements = [Element]()
    
    init() {
        load()
    }
    
    func load() {
        let filePath = Bundle.main.path(forResource: "elementData", ofType: "json")!
        let fileURL = URL(fileURLWithPath: filePath)
        
        URLSession.shared.dataTask(with: fileURL) { (data, response, error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Element].self, from: d)
                    DispatchQueue.main.async {
                        self.elements = decodedLists
                    }
                } else {
                    print("No Data")
                }
            } catch {
                print("Error: \(error)")
            }
        }.resume()
    }
}
