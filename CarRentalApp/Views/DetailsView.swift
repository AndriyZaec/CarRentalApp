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
    
    @State private var showMap: Bool = false
    
    var body: some View {
        GeometryReader { metrics in
            VStack {
                MapView(car: self.car)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: metrics.size.height * 0.3 )
                    .onTapGesture {
                        self.showMap = true
                    }.sheet(isPresented: self.$showMap) {
                        DetailsMapView(car: self.car)
                    }
                
                RemoteDecoratedImage(imageUrl: self.car.carImageUrl)
                    .offset(y: -70)
                    .padding(.bottom, -70)
                    .frame(width: metrics.size.width * 0.6)
                
                VStack(alignment: .center) {
                    Text(self.car.modelName)
                        .font(.title)
                        .foregroundColor(.primary)
                    Text(self.car.make)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text(self.car.licensePlate)
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
                            Image(self.car.fuelType.resourceName)
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("(\(self.car.fuelType.description))")
                            
                            Spacer()
                        }
                        
                        HStack(spacing: 5) {
                            Text("Fuel level: ")
                            ProgressBar(value: self.car.fuelLevel)
                                .foregroundColor(.accentColor)
                            
                            Spacer()
                        }
                        
                        HStack(spacing: 5) {
                            Text("Transmission: ")
                            Image(self.car.transmission.resourceName)
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text("(\(self.car.transmission.description))")
                            
                            Spacer()
                        }
                        
                        HStack(spacing: 5) {
                            Text("Color: ")
                            Rectangle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color(self.car.color.resourceName))
                                .cornerRadius(5)
                                .border(Color.white, width: 2)
                                .cornerRadius(5)
                            
                            Spacer()
                        }
                        
                        HStack(spacing: 5) {
                            Text("Inner cleanliness: ")
                            Text("\(self.car.innerCleanliness.rate)")
                            
                            Spacer()
                        }
                    }.padding()
                    
                    Spacer()
                }
                
                Spacer()
            }
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
