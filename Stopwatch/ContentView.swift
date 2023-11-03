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
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
