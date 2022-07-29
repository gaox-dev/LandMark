//
//  RotatedBadgeSymbol.swift
//  LandMark
//
//  Created by Gao on 2022/7/17.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angel: Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angel, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angel: Angle(degrees: 5))
    }
}
