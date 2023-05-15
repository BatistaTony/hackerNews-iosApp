//
//  PostData.swift
//  HackerNews
//
//  Created by Batista Tone on 15/05/23.
//

import Foundation



struct PostData: Decodable {
    let hits: [Post]
}


struct Post:Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let url: String?
    let points: Int
    let title: String
}
