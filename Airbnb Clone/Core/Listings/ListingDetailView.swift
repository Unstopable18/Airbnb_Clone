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
    var body: some View {
		if #available(iOS 17.0, *) {
			ScrollView{
                ZStack(alignment: .topLeading) {
                    ListingImageCarouselView()
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
					.scrollTargetBehavior(.paging)
				}
				.padding()
				
				Divider()
				
				VStack(alignment: .leading, spacing: 16){
					Text("What this place offers")
						.font(.headline)
					ForEach(0 ..< 5){ offer in
						HStack{
							Image(systemName: "wifi")
								.frame(width: 32)
							Text("Wifi")
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
					Map()
						.frame(height: 200)
						.clipShape(RoundedRectangle(cornerRadius: 12))
					
				}
				.padding()
			}
            .ignoresSafeArea()
            .padding(.bottom,64)
            .overlay(alignment: .bottom){
                VStack{
                    Divider()
                        .padding(.bottom)
                    HStack{
                        VStack(alignment: .leading){
                            Text("$500")
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
    ListingDetailView()
}
