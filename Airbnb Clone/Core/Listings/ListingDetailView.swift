//
//  ListingDetailView.swift
//  Airbnb Clone
//
//  Created by CEMTREX on 26/12/23.
//

import SwiftUI

struct ListingDetailView: View {
    var body: some View {
        ScrollView{
            ListingImageCarouselView()
                .frame(height:320)
            VStack(alignment: .leading,spacing: 8){
                Text("Miami, Florida")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        Text("28 Reviews")
                            .underline()
                            .fontWeight(.semibold)
                        
                    }
                    Text("Miami, FLorida")
                }
                .font(.caption)
                .foregroundStyle(.black)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack{
                VStack{
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    HStack(spacing: 2){
                        Text("4 Guests - ")
                        Text("4 Bedrooms - ")
                        Text("4 Beds - ")
                        Text("3 Baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                Image("ProfilePhoto")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64,height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(0 ..< 2){ feature in
                    HStack(spacing: 12){
                        Image(systemName: "medal")
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhost are experience, highly rated hosts who are commited to providing great stars for guests.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you will sleep")
                    .font(.headline)
                ScrollView(.horizontal ,showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ..< 5){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }  
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ListingDetailView()
}
