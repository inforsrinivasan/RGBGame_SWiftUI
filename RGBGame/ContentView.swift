//
//  ContentView.swift
//  RGBGame
//
//  Created by Srinivasan Rajendran on 2020-04-28.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var red: Double = 127
    @State var green: Double = 127
    @State var blue: Double = 127

    @State var redTarget: Double = 127
    @State var greenTarget: Double = 127
    @State var blueTarget: Double = 127


    var body: some View {
        VStack(spacing: 20) {
            HStack {
                VStack {
                    Color(red: red/255, green: green/255, blue: blue/255).frame(height: 300)
                    ColorLabel(red: $red, green: $green, blue: $blue)
                }
                VStack {
                    Color(red: 0.5, green: 0.5, blue: 0.5).frame(height: 300)
                    ColorLabel(red: $redTarget, green: $greenTarget, blue: $blueTarget)
                }
                Spacer()
            }
            ZStack {
                Text("\(red.stringWithoutZeroFraction)")
            }.offset(x: 0, y: 25)
            HStack {
                Text("0").foregroundColor(.red)
                Slider(value: $red, in: 0...255, step: 1).accentColor(.red)
                Text("255").foregroundColor(.red)
            }
            ZStack {
                Text("\(green.stringWithoutZeroFraction)")
            }.offset(x: 0, y: 25)
            HStack {
                Text("0").foregroundColor(.green)
                Slider(value: $green, in: 0...255, step: 1).accentColor(.green)
                Text("255").foregroundColor(.green)
            }
            ZStack {
                Text("\(blue.stringWithoutZeroFraction)")
            }.offset(x: 0, y: 25)
            HStack {
                Text("0").foregroundColor(.blue)
                Slider(value: $blue, in: 0...255, step: 1).accentColor(.blue)
                Text("255").foregroundColor(.blue)
            }
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Double {
    var stringWithoutZeroFraction: String {
        return truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
