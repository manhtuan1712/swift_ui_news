//
//  PostData.swift
//  H4XOR News
//
//  Created by Mập on 30/09/2021.
//

import Foundation

struct PostData: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int?
    let title: String
    let url: String?
}
