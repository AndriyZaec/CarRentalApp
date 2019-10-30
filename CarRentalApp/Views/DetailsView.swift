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
        VStack {
            MapView(car: car)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 200)
                .disabled(true)
            
            RemoteCircleImage(imageUrl: car.carImageUrl)
                .offset(y: -80)
                .padding(.bottom, -80)
                .frame(width: 300)
            
            VStack(alignment: .center) {
                Text(car.modelName)
                    .font(.title)
                    .foregroundColor(.primary)
                Text(car.make)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(car.licensePlate)
                    .padding([.top, .bottom], 3)
                    .padding([.leading, .trailing], 7)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                    .padding([.top], 10)
            }
            
            Divider()
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    HStack(spacing: 5) {
                        Text("Fuel type: ")
                        Image(car.fuelType.imageName)
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("(\(car.fuelType.description))")
                        
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Text("Fuel level: ")
                        ProgressBar(value: car.fuelLevel)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Text("Transmission: ")
                        Image(car.transmission.imageName)
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("(\(car.transmission.description))")
                        
                        Spacer()
                    }
                }.padding()
                
                Spacer()
            }
            
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
