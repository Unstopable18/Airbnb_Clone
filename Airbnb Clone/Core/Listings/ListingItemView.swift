//
//  ListingItemView.swift
//  Airbnb Clone
//
//  Created by CEMTREX on 21/12/23.
//

import SwiftUI

struct ListingItemView: View {

    var body: some View {
        VStack(spacing: 8){
            // Images
            ListingImageCarouselView()
                .frame(height:320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Listing Details
            HStack(alignment: .top){
                
                // Details
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night"
                        )
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                // Rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
                
            }
            .font(.footnote)
        }
        
    }
}

#Preview {
    ListingItemView()
}
