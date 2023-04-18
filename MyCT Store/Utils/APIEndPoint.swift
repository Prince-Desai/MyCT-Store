//
//  APIAndPoint.swift
//  MyCT Store
//
//  Created by Prince Desai on 03/04/23.
//

import Foundation

enum APIEndPoint {
    case getArea
    case getCity
    case homepage
    case getOrder
    
    var url: String {
        switch self {
        case .getArea: return "\(Config.baseURL)/get_area"
        case .getCity: return "\(Config.baseURL)/get_city"
        case .homepage: return "\(Config.baseURL)/homepage"
        case .getOrder: return "\(Config.baseURL)/get_order/8"
        }
    }
}
