//
//  DetailsView.swift
//  CarRentalApp
//
//  Created by Andrew on 29.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    
    let car: Car
    
    var body: some View {
        VStack(alignment: .leading) {
            MapView(car: car)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 200)
            
            RemoteCircleImage(imageUrl: car.carImageUrl)
                .offset(y: -80)
                .padding(.bottom, -130)
                .frame(width: 200)
            
            VStack(alignment: .leading) {
                Text(car.modelName)
                    .font(.title)
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(car:  Car(id: "2",
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
