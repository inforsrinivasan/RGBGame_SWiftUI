//
//  ColorLabel.swift
//  RGBGame
//
//  Created by Srinivasan Rajendran on 2020-04-28.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct ColorLabel: View {

    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double

    var body: some View {
        Text("R : \(red.stringWithoutZeroFraction) G : \(green.stringWithoutZeroFraction) B : \(blue.stringWithoutZeroFraction)").lineLimit(3).minimumScaleFactor(0.1)
    }
}

struct ColorLabel_Previews: PreviewProvider {
    static var previews: some View {
        ColorLabel(red: .constant(127), green: .constant(127), blue: .constant(127))
    }
}
