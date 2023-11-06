//
//  CircleView.swift
//  Stopwatch
//
//  Created by Lexi on 2023-11-03.
//

import SwiftUI

struct CircleView: View {
    let buttonColor: Color
    let buttonLable: String
    let lableColor: Color
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            // Third layer
            
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89)
            
            // Fourth layer
            Text(buttonLable)
                .foregroundColor(lableColor)
                .font(.title)
        }    }
}

#Preview {
    CircleView(buttonColor: .gray, buttonLable: "Reset", lableColor: .gray)
}
