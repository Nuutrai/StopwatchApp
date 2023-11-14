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
                    HStack {
                        VStack {
                            HStack {
                                Text("Today, -3HRS")
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            HStack {
                                Text("Vancouver")
                                    .font(.title)
                                Spacer()
                            }
                        }
                        HStack {
                            VStack {
                                
                                Text("5:55")
                                    .font(.custom("a", size: 60))
                                    .fontWeight(.light)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -7))
                            }
                            VStack {
                                Spacer()
                                Text("PM")
                                    .font(.title)
                                
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
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
