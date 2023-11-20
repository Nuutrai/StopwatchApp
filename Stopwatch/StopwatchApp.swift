//
//  StopwatchApp.swift
//  Stopwatch
//
//  Created by Lexi on 2023-11-02.
//

import SwiftUI

@main
struct StopwatchApp: App {
    var body: some Scene {
        WindowGroup {
            TabView(selection: Binding.constant(1)) {
                WorldClock()
                    .tabItem {
                        Image(systemName: "globe")
                        Text("World Clock")
                    }
                    .tag(1)
                Text("Alarm")
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
    }
}
