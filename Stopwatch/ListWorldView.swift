//
//  ListWorldView.swift
//  Stopwatch
//
//  Created by Lexi on 2023-11-13.
//

import SwiftUI

struct ListWorldView: View {
    
    let area: String
    let time: String
    let date: String
    let meridiem: String
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text("\(date)HRS")
                        .foregroundColor(.gray)
                    Spacer()
                }
                HStack {
                    Text(area)
                        .font(.title)
                    Spacer()
                }
            }
            HStack {
                
                Text(time)
                    .font(.system(size: 55.0, weight: .light))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -7))
                
                VStack {
                    Spacer()
                    Text(meridiem)
                        .font(.title)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    
                }
            }
        }
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
}

#Preview {
    ListWorldView(area: "Vancouver", time: "5:55", date: "Today, -3", meridiem: "PM")
}
