//
//  APIRespose.swift
//  MyCT Store
//
//  Created by Prince Desai on 03/04/23.
//

import Foundation

struct ApiResponse: Decodable {
    var error: Bool
    var data: [Area]
}
