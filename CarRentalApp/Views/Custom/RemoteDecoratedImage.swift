//
//  RemoteCircleImage.swift
//  CarRentalApp
//
//  Created by Andrew on 29.10.2019.
//  Copyright © 2019 Andrew Zaiets. All rights reserved.
//

import SwiftUI
import SwURL

struct RemoteDecoratedImage: View {
    
    let imageUrl: String?
    
    var body: some View {
        RemoteImageView(
            url: URL(string: imageUrl ?? Constants.helper.imageNotFound.rawValue)!,
            placeholderImage: Image.init("imageNotFound"),
            transition: .custom(
                transition: .opacity,
                animation: .easeOut(duration: 0.5)
            ),
            imageRenderingMode: .original
        )
            .aspectRatio(contentMode: .fit)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        RemoteDecoratedImage(imageUrl: nil)
    }
}
