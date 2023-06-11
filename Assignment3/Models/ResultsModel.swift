//
//  ResultsModel.swift
//  Assignment3
//
//  Created by Wendy Barker on 6/11/23.
//

import Foundation

struct ResultModel : Codable, Identifiable {
    var id : UUID {
        return UUID()
    }
    let category : String
    let type: String
    let difficulty : String
    let question : String
    let correct_answer : String
    let incorrect_answers : [String]
}

extension String: Identifiable {
    public typealias ID = Int
    public var id: Int {
        return hash
    }
}
