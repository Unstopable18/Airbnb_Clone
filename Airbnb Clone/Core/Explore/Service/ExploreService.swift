//
//  ExploreService.swift
//  Airbnb Clone
//
//  Created by Abhijeet Bhagat on 10/01/24.
//

import Foundation

class ExploreService {
	func fetchListings() async throws -> [Listing]{
		return DeveloperPreview.shared.listings
	}
	
}
