//
//  ContentView.swift
//  smarteatin
//
//  Created by Dhanush  on 9/9/24.
//

//all suggestion or guidance comments made on 12/9/2024

//just look through my comments at the top of each file and feel free to accept them if yw
//ill work on this more after the deadline as a passion project
//if you have like 3 months extra go learn HealthKit it might be useful for this app
//you can also... well... not learn it
//if you have any questions please hesitate to contact me!

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
            settings()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
