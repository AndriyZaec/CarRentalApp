//
//  Car.swift
//  CarRentalApp
//
//  Created by Andrew on 23.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import Foundation

struct Car: Codable {
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

enum FuelType: String, Codable {
    case D // Diesel
    case E // Eco
    case P // Petrol
}

enum TransmissionType: String, Codable {
    case M // Mannual
    case A // Automat
}

enum Cleanliness: String, Codable {
    case CLEAN
    case REGULAR
    case VERY_CLEAN
}
