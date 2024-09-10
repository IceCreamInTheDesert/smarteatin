//
//  home.swift
//  smarteatin
//
//  Created by Dhanush  on 10/9/24.
//

import SwiftUI

struct home: View {
    
    @State private var calories = 0.3
    
    var body: some View {
        
        NavigationStack{
            VStack{
                ZStack{
                    Circle()
                        .stroke(
                            Color.gray.opacity(0.5),
                            lineWidth: 30
                        )
                        .frame(maxWidth: 200, maxHeight: 200, alignment: .top)
                        .offset(y: -150)
                    Circle()
                        .trim(from: 0, to: calories)
                        .stroke(
                            Color.green,
                            style: StrokeStyle(
                                lineWidth: 30,
                                lineCap: .round
                            )
                        )   .rotationEffect(.degrees(-90))
                        .animation(.easeOut, value: calories)
                        .frame(maxWidth: 200, maxHeight: 200, alignment: .top)
                        .offset(y: -150)
                }
                .navigationTitle("Home")
            }
        }
    }
}

#Preview {
    home()
}
