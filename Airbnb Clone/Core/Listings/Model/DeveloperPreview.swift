//
//  DeveloperPreview.swift
//  Airbnb Clone
//
//  Created by Abhijeet Bhagat on 10/01/24.
//

import Foundation

class DeveloperPreview{
	static let shared = DeveloperPreview()
	var listings: [Listing] = [
		.init(
			id: NSUUID().uuidString,
			ownerUid: NSUUID().uuidString,
			ownerName: "John Smith",
			ownerImageUrl: "ProfilePhoto",
			numberOfBedrooms: 4,
			numberOfBathrooms: 3,
			numberOfGuests: 4,
			numberOfBeds: 4,
			pricePerNight: 567,
			latitude: 25.7850,
			longitude: -80.1936, 
			imageURLs: ["image-2", "image-4", "image-1", "image-5"],
			address: "124 Main St",
			city: "Miami",
			state: "Florida",
			title: "Miami Villa",
			rating: 4.86,
			features: [.selfCheckIn,.superHost],
			amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
			type: .villa
		),
		.init(
			id: NSUUID().uuidString,
			ownerUid: NSUUID().uuidString,
			ownerName: "John Smith",
			ownerImageUrl: "ProfilePhoto",
			numberOfBedrooms: 4,
			numberOfBathrooms: 3,
			numberOfGuests: 4,
			numberOfBeds: 4,
			pricePerNight: 567,
			latitude: 25.7706,
			longitude: -80.1340,
			imageURLs: ["image-3", "image-1", "image-2", "image-4"],
			address: "124 Main St",
			city: "Miami",
			state: "Florida",
			title: "Miami Beach House",
			rating: 4.86,
			features: [.selfCheckIn,.superHost],
			amenities: [.wifi, .alarmSystem, .kitchen, .office, .tv],
			type: .house
		),
		.init(
			id: NSUUID().uuidString,
			ownerUid: NSUUID().uuidString,
			ownerName: "Steve Johnson",
			ownerImageUrl: "ProfilePhoto",
			numberOfBedrooms: 4,
			numberOfBathrooms: 3,
			numberOfGuests: 4,
			numberOfBeds: 4,
			pricePerNight: 763,
			latitude: 25.7850,
			longitude: -80.1936,
			imageURLs: ["image-1", "image-2", "image-4", "image-5"],
			address: "124 Main St",
			city: "Miami",
			state: "Florida",
			title: "Beautiful Miami apartment in downtown Brickell",
			rating: 4.32,
			features: [.selfCheckIn,.superHost],
			amenities: [.wifi, .alarmSystem, .balcony],
			type: .apartment
		),
		.init(
			id: NSUUID().uuidString,
			ownerUid: NSUUID().uuidString,
			ownerName: "Harry Styles",
			ownerImageUrl: "ProfilePhoto",
			numberOfBedrooms: 4,
			numberOfBathrooms: 3,
			numberOfGuests: 4,
			numberOfBeds: 4,
			pricePerNight: 763,
			latitude: 34.2,
			longitude: -118.0426,
			imageURLs: ["image-5", "image-4", "image-3", "image-2"],
			address: "124 Main St",
			city: "Los Angeles",
			state: "California",
			title: "Beautiful Los Angeles home in Malibu",
			rating: 4.97,
			features: [.selfCheckIn,.superHost],
			amenities: [.wifi, .alarmSystem, .pool],
			type: .apartment
		),
		.init(
			id: NSUUID().uuidString,
			ownerUid: NSUUID().uuidString,
			ownerName: "Timothy Chalamet",
			ownerImageUrl: "ProfilePhoto",
			numberOfBedrooms: 4,
			numberOfBathrooms: 3,
			numberOfGuests: 4,
			numberOfBeds: 4,
			pricePerNight: 763,
			latitude: 34.1,
			longitude: -118.1426,
			imageURLs: ["image-3", "image-2", "image-1", "image-4"],
			address: "124 Main St",
			city: "Los Angeles",
			state: "California",
			title: "Beautiful Los Angeles home in Hollywood Hills",
			rating: 4.86,
			features: [.selfCheckIn,.superHost],
			amenities: [.wifi, .alarmSystem, .office, .laundry, .tv, .pool],
			type: .villa
		)]
}

