//
//  ListView.swift
//  Stopwatch
//
//  Created by Lexi on 2023-11-06.
//

import SwiftUI

struct ListView: View {
    
    let lapNum: Int
    let lapTime: String
    let lapColor: Color
    
    var body: some View {
        HStack {
            Text("Lap \(lapNum)")
                .padding(0)
            Spacer()
            Text(lapTime)
                .font(.system(size: 17.0, weight: .none, design: .monospaced))
        }
        .foregroundColor(lapColor)
    }
}

#Preview {
    ListView(lapNum: 7, lapTime: "00:09.02", lapColor: .red)
}
