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
        ScrollView(.horizontal) {
            HStack {
                ForEach(viewModel.cars) { car in
                    CarListCellView(car: car)
                }
            }
            }.frame(height: 190)
            .foregroundColor(.gray)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
