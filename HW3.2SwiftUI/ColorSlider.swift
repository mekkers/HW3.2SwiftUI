//
//  ColorSlider.swift
//  HW3.2SwiftUI
//
//  Created by igor mekkers on 14.01.2022.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    var color: Color
    
    var body: some View {
        HStack {
            SliderValueLabel(value: sliderValue)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
            SliderValueTF(value: $sliderValue)
            }
        }
    
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(sliderValue: .constant(100), color: .red)
    }
}
