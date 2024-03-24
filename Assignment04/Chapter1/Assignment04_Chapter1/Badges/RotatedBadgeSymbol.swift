//
//  RotatedBadgeSymbol.swift
//  Assignment04_Chapter1
//
//  Created by 이창희 on 3/24/24.
//

import SwiftUI


struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
        
    }
}


#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
