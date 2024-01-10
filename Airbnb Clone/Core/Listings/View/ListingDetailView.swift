//
//  ListingDetailView.swift
//  Airbnb Clone
//
//  Created by CEMTREX on 26/12/23.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
	let listing: Listing
	@State private var cameraPosition: MapCameraPosition
	
	init(listing:Listing){
		self.listing = listing
//		let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longitude), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
		let region = MKCoordinateRegion(center: CLLocationCoordinate2D.losAngelas, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
		self._cameraPosition = State(initialValue: .region(region))
	}
	
    var body: some View {
		if #available(iOS 17.0, *) {
            
//            Details View
			ScrollView{
                ZStack(alignment: .topLeading) {
					ListingImageCarouselView(listing: listing)
                        .frame(height:320)
                    Button{
                        dismiss()
                    }label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .background{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 32, height: 32)
                                
                            }
                            .padding(32)
                    }
                }
                
				VStack(alignment: .leading,spacing: 8){
					Text("\(listing.title)")
						.font(.title)
						.fontWeight(.semibold)
						.foregroundStyle(.black)
					VStack(alignment: .leading){
						HStack(spacing: 2){
							Image(systemName: "star.fill")
							Text("\(listing.rating)")
							Text(" - ")
							Text("28 Reviews")
								.underline()
								.fontWeight(.semibold)
							
						}
						Text("\(listing.city), \(listing.state)")
					}
					.font(.caption)
					.foregroundStyle(.black)
				}
				.padding(.leading)
				.frame(maxWidth: .infinity, alignment: .leading)
				
				Divider()
				
				HStack{
					VStack{
						Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
							.font(.headline)
							.frame(width: 250, alignment: .leading)
						HStack(spacing: 2){
							Text("\(listing.numberOfGuests) Guests - ")
							Text("\(listing.numberOfBedrooms) Bedrooms - ")
							Text("\(listing.numberOfBeds) Beds - ")
							Text("\(listing.numberOfBathrooms) Baths")
						}
						.font(.caption)
					}
					.frame(width: 300, alignment: .leading)
					Spacer()
					Image("\(listing.ownerImageUrl)")
						.resizable()
						.scaledToFill()
						.frame(width: 64,height: 64)
						.clipShape(Circle())
				}
				.padding()
				
				Divider()
				
				VStack(alignment: .leading, spacing: 16){
					ForEach(listing.features){ feature in
						HStack(spacing: 12){
							Image(systemName: feature.imageName)
							VStack(alignment: .leading){
								Text(feature.title)
									.font(.footnote)
									.fontWeight(.semibold)
								
								Text(feature.subtitle)
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
							ForEach(1 ..< listing.numberOfBedrooms+1, id: \.self){ bedroom in
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
					.scrollTargetBehavior(.paging)
				}
				.padding()
				
				Divider()
				
				VStack(alignment: .leading, spacing: 16){
					Text("What this place offers")
						.font(.headline)
					ForEach(listing.amenities){ offer in
						HStack{
							Image(systemName: "\(offer.imageName)")
								.frame(width: 32)
							Text("\(offer.title)")
								.font(.footnote)
							
							Spacer()
						}
					}
					
				}
				.padding()
				
				Divider()
				
				VStack(alignment: .leading, spacing: 16){
					Text("Where you'll be")
						.font(.headline)
					Map(position: $cameraPosition)
						.frame(height: 200)
						.clipShape(RoundedRectangle(cornerRadius: 12))
					
				}
				.padding()
			}
            .toolbar(.hidden, for: .tabBar)
            .ignoresSafeArea()
            .padding(.bottom,64)
            .overlay(alignment: .bottom){
                
//                Sticky Bottom
                VStack{
                    Divider()
                        .padding(.bottom)
                    HStack{
                        VStack(alignment: .leading){
							Text("$\(listing.pricePerNight)")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Total before taxes")
                                .font(.footnote)
                            
                            Text("Oct 15 - 20")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .underline()
                        }
                        Spacer()
                        Button{
                            
                        }label: {
                            Text("Reserve")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .frame(width: 140, height: 40)
                                .fontWeight(.semibold)
                                .background(.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    .padding(.horizontal, 32)
                }
                .background(.white)
            }
            
		} else {
			// Fallback on earlier versions
		}
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[0])
}
