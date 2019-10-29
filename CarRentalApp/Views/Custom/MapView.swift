//
//  MapView.swift
//  CarRentalApp
//
//  Created by Andrew on 28.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let car: Car
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: car.latitude,
                                                longitude: car.longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: car.latitude,
                                                       longitude: car.longitude)
        annotation.title = car.licensePlate
        annotation.subtitle = car.name
        uiView.addAnnotation(annotation)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView( car: Car(id: "2",
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
