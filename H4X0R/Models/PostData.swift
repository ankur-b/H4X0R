//
//  PostData.swift
//  H4X0R
//
//  Created by Ankur on 04/08/24.
//

import Foundation

struct Results : Decodable{
    let hits:[Post]
    
}

struct Post : Decodable,Identifiable {
    var id : String{
        return objectId ?? UUID().uuidString
    }
    let objectId : String?
    let points: Int
    let title: String
    let url: String?
}
