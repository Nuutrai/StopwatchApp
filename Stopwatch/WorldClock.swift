//
//  WorldClock.swift
//  Stopwatch
//
//  Created by Lexi on 2023-11-06.
//

import SwiftUI

struct WorldClock: View {
    var body: some View {
        VStack {
            HStack {
                
                Text("Edit")
                Spacer()
                Image(systemName: "plus")
            }
            .foregroundColor(.orange)
            
            
            
            
            
            List {
                Group {
                    HStack {
                        Text("World Clock")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.init(top: 7, leading: 0, bottom: 8, trailing: 0))
                        Spacer()
                    }
                    ListWorldView(area: "Vancouver", time: "5:55", date: "Today, -3", meridiem: "PM")
                    ListWorldView(area: "Toronto", time: "8:55", date: "Today, +0", meridiem: "PM")
                    ListWorldView(area: "Beijing", time: "9:55", date: "Tomorrow, +13", meridiem: "AM")
                    ListWorldView(area: "Tokyo", time: "10:55", date: "Tomorrow, +14", meridiem: "AM")
                    ListWorldView(area: "Sydney", time: "12:55", date: "Tomorrow, +16", meridiem: "PM")
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .listStyle(.plain)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TabView(selection: Binding.constant(1)) {
        WorldClock()
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
            .tag(1)
        Image(systemName: "alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
            .tag(2)
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(3)
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(4)
    }
    .accentColor(.orange)
    .preferredColorScheme(.dark)
}
