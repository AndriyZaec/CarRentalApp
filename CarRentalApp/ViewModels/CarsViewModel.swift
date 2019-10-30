//
//  CarsViewModel.swift
//  CarRentalApp
//
//  Created by Andrew on 23.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI
import Combine

final class CarsViewModel: ObservableObject {
    
    @Published private(set) var cars = [Car]()
    
    private let provider = ApiProvider()
    
    init() {
        fetchCars()
    }
    
    private func fetchCars() {
        _ = provider.get(.cars)
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: \.cars, on: self)
    }
}
