//
//  home.swift
//  smarteatin
//
//  Created by Dhanush  on 10/9/24.
//

import SwiftUI

struct home: View {
    
    @State private var caloriesLeft = 0.3
    @State private var donutChartColor: Color = Color.green
    @State private var goalSet = false
    
    var body: some View {
        NavigationStack{
            VStack{
                if (goalSet == true) {
                    ZStack{
                        Circle()
                            .stroke(
                                Color.gray.opacity(0.5),
                                lineWidth: 30
                            )
                            .frame(maxWidth: 200, maxHeight: 200, alignment: .top)
                            .offset(y: -160)
                        Circle()
                            .trim(from: 0, to: caloriesLeft)
                            .stroke(
                                Color.green,
                                style: StrokeStyle(
                                    lineWidth: 30,
                                    lineCap: .round
                                )
                            )   .rotationEffect(.degrees(-90))
                            .animation(.easeOut, value: caloriesLeft)
                            .frame(maxWidth: 200, maxHeight: 200, alignment: .top)
                            .offset(y: -160)
                        Text("Calories left")
                            .offset(y: -170)
                        Text("\(caloriesLeft * 100)%")
                            .offset(y: -150)
                            .bold()
                    }
                } else {
                    Button {
                        //edit later
                        goalSet = true
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25.0)
                                .foregroundStyle(Color(uiColor: .systemGray5))
                                .frame(maxWidth: 350, maxHeight: 300, alignment: .top)
                                .offset(y: -160)
                            VStack{
                                Text("You have not set a goal yet")
                                    .offset(y: -160)
                                    .foregroundStyle(.black)
                                    .font(.system(size: 20.0))
                                Text("Tap here to set a goal")
                                    .offset(y: -160)
                                    .bold()
                                    .font(.system(size: 20.0))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    home()
}
