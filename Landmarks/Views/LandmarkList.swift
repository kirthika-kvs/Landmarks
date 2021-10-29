//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Saravanan Pari on 10/29/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail()){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
