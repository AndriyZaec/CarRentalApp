//
//  Car.swift
//  CarRentalApp
//
//  Created by Andrew on 23.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import Foundation

struct Car: Codable, Hashable, Identifiable {
    let id: String
    let modelIdentifier: String
    let modelName: String
    let name: String
    let make: String
    let group: String
    let color: String
    let series: String
    let fuelType: FuelType
    let fuelLevel: Float
    let transmission: TransmissionType
    let licensePlate: String
    let latitude: Double
    let longitude: Double
    let innerCleanliness: Cleanliness
    let carImageUrl: String?
}

protocol CarRepresentable {
    var imageName: String { get }
    var description: String { get }
}

enum FuelType: String, Codable, CarRepresentable {
    case D // Diesel
    case E // Eco
    case P // Petrol
    
    var imageName: String {
        switch self {
        case .E:
            return "Eco"
        case .D, .P:
            return "PetrolDiesel"
        }
    }
    
    var description: String {
        switch self {
        case .E:
            return "Eco"
        case .P:
            return "Petrol"
        case .D:
            return "Diesel"
        }
    }
}

enum TransmissionType: String, Codable, CarRepresentable {
    case M // Mannual
    case A // Automat
    
    var imageName: String {
        switch self {
        case .M:
            return "manual"
        case .A:
            return "automatic"
        }
    }
    
    var description: String {
       switch self {
        case .M:
            return "Мanual"
        case .A:
            return "Automatic"
        }
    }
}



enum Cleanliness: String, Codable {
    case clean = "CLEAN"
    case regualr = "REGULAR"
    case veryClean = "VERY_CLEAN"
}
