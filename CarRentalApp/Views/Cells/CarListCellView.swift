//
//  CarListCellView.swift
//  CarRentalApp
//
//  Created by Andrew on 24.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI
import SwURL

struct CarListCellView: View {
    
    var car: Car
    
    var body: some View {
        VStack {
            RemoteImageView(
                url: URL(string: car.carImageUrl ?? Constants.helper.imageNotFound.rawValue)!,
                placeholderImage: Image.init("imageNotFound"),
                transition: .custom(
                    transition: .opacity,
                    animation: .easeOut(duration: 0.2
                    )
                ),
                imageRenderingMode: .original
            ).scaledToFit()
            
            Text(car.modelName)
            Text(car.fuelType.rawValue)
            Text(car.color)
        }
    }
}

struct CarListCellView_Previews: PreviewProvider {
    static var previews: some View {
        CarListCellView(car: Car(id: "2",
                                 modelIdentifier: "Mini",
                                 modelName: "Mini",
                                 name: "Mini",
                                 make: "Mini",
                                 group: "Mini",
                                 color: "black",
                                 series: "Mini",
                                 fuelType: .E,
                                 fuelLevel: 0.4,
                                 transmission: .A,
                                 licensePlate: "sdafa",
                                 latitude: 3.4,
                                 longitude: 3.5,
                                 innerCleanliness: .regualr,
                                 carImageUrl: ""))
    }
}


