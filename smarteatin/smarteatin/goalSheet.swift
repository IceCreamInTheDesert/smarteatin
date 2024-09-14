//
//  goalSheet.swift
//  smarteatin
//
//  Created by Dhanush  on 10/9/24.
//

//here the user can set a goal
//its meant to be a sheet so in the home page you can use .sheet go look it up
//you should probably add a TextField
//or maybe if u have the time add a picker to select age and then the textfield automatically fills in

import SwiftUI

struct goalSheet: View {
    
    @Binding var goal: Int?
    @Binding var goalSet: Bool
    
    func verifyGoalSet() {
        if goal {
            
        }
    }
    
    var body: some View {
        List{
            TextField("Enter your goal in calories", value: $goal, format: .number)
                .padding()
                .presentationDragIndicator(.visible)
                .presentationDetents([.fraction(0.2), .large])
        }
    }
}
