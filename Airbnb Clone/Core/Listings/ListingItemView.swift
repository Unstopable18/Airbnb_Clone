//
//  ListingItemView.swift
//  Airbnb Clone
//
//  Created by CEMTREX on 21/12/23.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
        "image-5",
    ]
    var body: some View {
        VStack(spacing: 8){
            // Images
            TabView{
                ForEach(images, id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height:320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // Listing Details
            HStack(alignment: .top){
                
                // Details
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
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
                }
                Spacer()
                // Rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                
            }
            .font(.footnote)
        }
        
    }
}

#Preview {
    ListingItemView()
}
