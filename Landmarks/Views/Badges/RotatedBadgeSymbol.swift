//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Saravanan Pari on 11/1/21.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle : Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
