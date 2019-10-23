//
//  ApiController.swift
//  CarRentalApp
//
//  Created by Andrew on 23.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import Foundation

enum ApiController: String {
    case cars
    
    var route: String {
        switch self {
        case .cars:
            return "codingtask/cars"
        }
    }
}
