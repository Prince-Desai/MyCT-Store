//
//  MyOrderApiResponse.swift
//  MyCT Store
//
//  Created by Prince Desai on 10/04/23.
//

import Foundation


struct OrderAPIResponse: Decodable{
    var error: Bool
    var data: [OrderAPIData]
   
//    enum CodingKeys: String,CodingKey{
//        case error
//        case order = "data"
//    }
}


