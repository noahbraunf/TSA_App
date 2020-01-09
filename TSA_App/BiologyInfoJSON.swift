//
//  BiologyInfo.swift
//  TSA_App
//
//  Created by Noah Braunfeld on 12/31/19.
//  Copyright © 2019 Noah Braunfeld. All rights reserved.
//

import Foundation

struct ResponseData: Decodable {
    var bioInfo: [BiologyInfo]
}

struct BiologyInfo: Hashable, Codable {
    // TODO: Make sections
//    enum Section: String {
//
//    }
    
    let term: String
    let information: String
    let question: String
    let correctAnswer: String
    
    init(term: String, information: String, question: String, correctAnswer: String) {
        self.term = term
        self.information = information
        self.question = question
        self.correctAnswer = correctAnswer
    }
}

extension BiologyInfo {
    init?(json: [String: Any]) {
        guard let termJSON = json["name"] as? String,
              let informationJSON = json["information"] as? String,
              let questionJSON = json["question"] as? String,
              let correctAnswerJSON = json["correctAnswer"] as? String
        // FIXME: Add enum as well and convert strings to enum
        else {
            return nil
        }
        
        self.term = termJSON
        self.information = informationJSON
        self.question = questionJSON
        self.correctAnswer = correctAnswerJSON
    }
}

func loadJson(filename fileName: String) -> [BiologyInfo]? {
    if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(ResponseData.self, from: data)
            return jsonData.bioInfo
        } catch {
            print("error: \(error)")
        }
    }
    return nil
}
