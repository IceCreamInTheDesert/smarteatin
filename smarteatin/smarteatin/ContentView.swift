//
//  ContentView.swift
//  smarteatin
//
//  Created by Dhanush  on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            foods()
                .tabItem {
                    Label("Foods", systemImage: "fork.knife")
                }
            goals()
                .tabItem {
                    Label("Goals", systemImage: "circle.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
