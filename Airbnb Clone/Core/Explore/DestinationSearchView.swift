//
//  DestinationSearchView.swift
//  Airbnb Clone
//
//  Created by CEMTREX on 29/12/23.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    var body: some View {
        VStack{
            Button{
                show.toggle()
            }label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            Text("Where to?")
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}
