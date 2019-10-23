//
//  MainView.swift
//  CarRentalApp
//
//  Created by Andrew on 23.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel = CarsViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(viewModel.cars) { car in
                    Text(car.modelName)
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
