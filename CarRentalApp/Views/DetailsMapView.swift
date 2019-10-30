//
//  DetailsMapView.swift
//  CarRentalApp
//
//  Created by Andrew on 30.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI

struct DetailsMapView: View {
    
    let car: Car
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            MapView(car: car)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Dismiss")
                        .foregroundColor(.orange)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }
                .padding(.bottom, 30)
            }
        }
    }
}

struct DetailsMapView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsMapView(car: Car(id: "2",
                                modelIdentifier: "Mini",
                                modelName: "Mini",
                                name: "Mini",
                                make: "Mini",
                                group: "Mini",
                                color: .absoluteBlackMetal,
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
