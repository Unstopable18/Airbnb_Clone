//
//  ListingImageCarouselView.swift
//  Airbnb Clone
//
//  Created by CEMTREX on 26/12/23.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
        "image-5",
    ]
	let listing: Listing
    var body: some View {
            // Images
            TabView{
				ForEach(listing.imageURLs, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page)
    }
}

#Preview {
	ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
