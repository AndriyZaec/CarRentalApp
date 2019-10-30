//
//  ProgressBar.swift
//  CarRentalApp
//
//  Created by Andrew on 30.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI
import UIKit

struct ProgressBar: UIViewRepresentable {
    
    let value: Float
    
    func updateUIView(_ uiView: UIProgressView, context: Context) {
        uiView.progress = value
        uiView.tintColor = .green
    }
    
    func makeUIView(context: Context) -> UIProgressView {
        UIProgressView()
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(value: 0.6)
    }
}
