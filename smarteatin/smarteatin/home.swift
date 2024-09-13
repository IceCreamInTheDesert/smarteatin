//
//  home.swift
//  smarteatin
//
//  Created by Dhanush  on 10/9/24.
//

//omg look a page i actually worked on
//well just look thru comments 
//theres a lot of free space at the bottom that you can fill up however you want, maybe add a classic QOTD section and use    .frame(maxWidth: 300, maxHeight: 100) or something like that
//or maybe advice on controlling eating cadbury chocolate at 12pm
//im procrastinating homework while typing theese comments out btw

import SwiftUI

struct home: View {
    
    @State private var caloriesLeft = 0.3
    @State private var donutChartColor: Color = Color.green
    @State private var goalSet = false //set to false after testing
    @State private var goalSheetShowing = false
    @State private var logSheetShowing = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    if (goalSet == true) {
                        ZStack{
                            Circle()
                                .stroke(
                                    Color.gray.opacity(0.5),
                                    lineWidth: 30
                                )
                                .frame(maxWidth: 200, maxHeight: 200, alignment: .top)
                                .offset(y: -150)
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
                                .offset(y: -150)
                            Text("Calories left")
                                .offset(y: -160)
                            Text(String(caloriesLeft*100))
                                .offset(y: -140)
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
                                    .frame(maxWidth: 350, maxHeight: 250, alignment: .top)
                                    .offset(y: -150)
                                VStack{
                                    Text("You have not set a goal yet")
                                        .offset(y: -150)
                                        .foregroundStyle(.black)
                                        .font(.system(size: 20.0))
                                    Text("Tap here to set a goal")
                                        .offset(y: -150)
                                        .bold()
                                        .font(.system(size: 20.0))
                                }
                            }
                        }
                        .sheet(isPresented: $goalSheetShowing, content: {
                            goalSheet()
                        })
                    }
                    Button{
                        logSheetShowing.toggle()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                            HStack{
                                Image(systemName: "plus")
                                Text("Log")
                            }
                            .foregroundStyle(.white)
                            .bold()
                            .font(.system(size: 30))
                        }
                    }
                    .frame(maxWidth: 350, maxHeight: 100)
                    .offset(y: -140)
                    .sheet(isPresented: $logSheetShowing, content: {
                        logsheet()
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
