//
//  ExploreView.swift
//  Airbnb Clone
//
//  Created by CEMTREX on 21/12/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0 ... 10, id: \.self){ listing in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
