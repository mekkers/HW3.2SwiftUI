//
//  SliderValueLabel.swift
//  HW3.2SwiftUI
//
//  Created by igor mekkers on 14.01.2022.
//

import SwiftUI

struct SliderValueLabel: View {
    let value: Double
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 40, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct SliderValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueLabel(value: 128)
    }
}
