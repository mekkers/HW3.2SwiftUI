//
//  ColorView.swift
//  HW3.2SwiftUI
//
//  Created by igor mekkers on 14.01.2022.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let blue: Double
    let green: Double
    
    var body: some View {
        Color(red: red / 255,
              green: green / 255,
              blue: blue / 255
        )
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 5))
            .frame(height: 150)
    }
        
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, blue: 100, green: 100)
    }
}
