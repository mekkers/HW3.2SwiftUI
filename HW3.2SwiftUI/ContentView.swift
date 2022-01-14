//
//  ContentView.swift
//  HW3.2SwiftUI
//
//  Created by igor mekkers on 13.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0.376562, blue: 0.7304599, alpha: 1)).ignoresSafeArea()
            VStack {
                VStack(spacing: 40) {
                    ColorView(red: red, blue: blue, green: green)
                    VStack {
                        ColorSlider(sliderValue: $red, color: .red)
                        ColorSlider(sliderValue: $blue, color: .blue)
                        ColorSlider(sliderValue: $green, color: .green)
                    }
                    .frame(height: 150)
                }
                .padding()
                
                Spacer()
            }
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
