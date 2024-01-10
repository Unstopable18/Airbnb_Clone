//
//  ExploreViewModel.swift
//  Airbnb Clone
//
//  Created by Abhijeet Bhagat on 10/01/24.
//

import Foundation

class ExploreViewModel: ObservableObject{
	@Published var listings = [Listing]()
	private let service: ExploreService
	
	init(service: ExploreService){
		self.service = service
		Task { await fetchListings() }
	}
	
	func fetchListings() async {
		do{
			self.listings = try await service.fetchListings()
		}catch{
			print("DEBUG: Failed tp fetch listings with error: \(error.localizedDescription)")
		}
	}
}
