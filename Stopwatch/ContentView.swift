//
//  ContentView.swift
//  Stopwatch
//
//  Created by Lexi on 2023-11-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a cirular button
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
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
