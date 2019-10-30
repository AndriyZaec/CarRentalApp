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
    let color: CarColors
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
    var resourceName: String { get }
    var description: String { get }
}

enum FuelType: String, Codable, CarRepresentable {
    case D // Diesel
    case E // Eco
    case P // Petrol
    
    var resourceName: String {
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
    
    var resourceName: String {
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

enum CarColors: String, Codable, CarRepresentable {
    case midnightBlack = "midnight_black"
    case hotChocolate = "hot_chocolate"
    case midnightBlackMetal = "midnight_black_metal"
    case lightWhite = "light_white"
    case icedChocolate = "iced_chocolate"
    case alpinweiss = "alpinweiss"
    case saphirschwarz = "saphirschwarz"
    case icedChocolateMetal = "iced_chocolate_metal"
    case absoluteBlackMetal = "absolute_black_metal"
    case schwarz = "schwarz"
    
    var resourceName: String { "\(self)" }
    var description: String  { "" }
}

enum Cleanliness: String, Codable {
    case clean = "CLEAN"
    case regualr = "REGULAR"
    case veryClean = "VERY_CLEAN"
    
    var rate: String {
        switch self {
        case .clean:
            return "4/5"
        case .regualr:
            return "3/5"
        case .veryClean:
            return "5/5"
        }
    }
}
