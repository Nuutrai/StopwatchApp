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
                
                Spacer()
                
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a cirular button
                HStack {
                    CircleView(buttonColor: Color("Dark Grey"), buttonLable: "Reset", lableColor: .white)
                    Spacer()
                    Circle()
                        .frame(width: 10)
                    Circle()
                        .frame(width: 10)
                        .foregroundColor(.gray)
                    Spacer()
                    CircleView(buttonColor: Color("Dark Green"), buttonLable: "Start", lableColor: .green)
                    
                
                }
                
                List {
                    
                    Group {
                        ListView(lapNum: 5, lapTime: "00:00.98", lapColor: .white)
                        ListView(lapNum: 4, lapTime: "00:04.08", lapColor: .red)
                        ListView(lapNum: 3, lapTime: "00:00.96", lapColor: .green)
                        ListView(lapNum: 2, lapTime: "00:02.76", lapColor: .white)
                        ListView(lapNum: 1, lapTime: "00:01.16", lapColor: .white)
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                }
                .frame(height: 300)
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

#Preview {
    TabView(selection: Binding.constant(3)) {
        Text("World Clock")
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
