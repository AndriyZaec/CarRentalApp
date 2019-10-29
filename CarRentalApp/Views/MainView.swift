//
//  MainView.swift
//  CarRentalApp
//
//  Created by Andrew on 23.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI
import SwURL

struct MainView: View {
    
    @ObservedObject var viewModel = CarsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(viewModel.cars) { car in
                        NavigationLink(destination: DetailsView(car: car)) {
                              CarListCellView(car: car)
                                .padding()
                        }.buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .navigationBarTitle(Text("CARS"))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
