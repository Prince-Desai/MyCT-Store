//
//  AreaModel.swift
//  MyCT Store
//
//  Created by Prince Desai on 03/04/23.
//

import Foundation


struct Area: Decodable {
    
    var city: String
    var stats: String
    var dateAndTime: String
    enum CodingKeys: String, CodingKey{
        case city, stats
        case dateAndTime = "date_time"
    }
}
