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
    @State private var goalSet = true //set to false after testing
    @State private var goalSheetShowing = false
    
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
                                donutChartColor,
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
                        Text(String(caloriesLeft*100))
                            .offset(y: -150)
                            .bold()
                    }
                    .onChange(of: caloriesLeft) {
                        updateDonutChartColor()
                    }
                } else {
                    Button {
                        goalSheetShowing.toggle()
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
                    .sheet(isPresented: $goalSheetShowing, content: {
                        goalSheet()
                    })
                }
            }
            .navigationTitle("Home")
        }
    }
    func updateDonutChartColor() {
        if caloriesLeft < 0.33 {
            donutChartColor = Color.red
        } else if caloriesLeft > 0.66 {
            donutChartColor = Color.green
        } else {
            donutChartColor = Color.yellow
        }
    }
}

#Preview {
    home()
}
