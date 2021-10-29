//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Saravanan Pari on 10/29/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .foregroundColor(.black)
            HStack {
                Text("Joshua Tree National Park")
                Spacer()
                Text("California")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider()
            
            Text("About Turtle Rock")
                .font(.subheadline)
            Text("Descriptive text")
            
        }
        .padding()
        Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
