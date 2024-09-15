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
    @State private var goalTextField: Int? = nil
    @State private var submitted = false
    @State private var alertShowing = false
    @State private var alertMessage: AlertMessage?
    
    struct AlertMessage: Identifiable {
        var id: UUID
        var message: String
    }
    
    func verifyGoalSet() {
        if (goalTextField != nil) {
            if (submitted == true) {
                goal = goalTextField
                goalSet = true
            }
        } else {
            alertShowing = true
            alertMessage?.message = "Please fill in all required fields"
        }
    }
    
    func submit() {
        
    }
    
    var body: some View {
        List{
            TextField("Enter your goal in calories", value: $goalTextField, format: .number)
                .padding()
                .keyboardType(.numberPad)
            Button{
                submitted = true
                verifyGoalSet()
            } label: {
                Text("Submit")
            }
            .alert("\(String(describing: alertMessage?.message))", isPresented: $alertShowing) {
                Button("OK", role: .cancel) {
                    
                }
            }
        }
    }
}
