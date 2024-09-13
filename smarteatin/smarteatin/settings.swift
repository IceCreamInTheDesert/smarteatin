//
//  settings.swift
//  smarteatin
//
//  Created by Dhanush  on 10/9/24.
//

//here the user can change settings
//maybe add a space they can change their goal, again using TextField

import SwiftUI

struct settings: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("settings")
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    settings()
}
