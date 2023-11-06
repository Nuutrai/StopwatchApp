//
//  CircleView.swift
//  Stopwatch
//
//  Created by Lexi on 2023-11-03.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(.gray)
                .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            // Third layer
            
            Circle()
                .foregroundColor(.gray)
                .frame(width: 89)
            
            // Fourth layer
            Text("Reset")
                .foregroundColor(.white)
                .font(.title)
        }    }
}

#Preview {
    CircleView()
}
