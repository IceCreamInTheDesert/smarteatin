//
//  addfoodsheet.swift
//  smarteatin
//
//  Created by Dhanush  on 10/9/24.
//

//its also a sheet
//access from food tab
//add food items
//i was thinking add a TextField for food name and calories and maybe if u have the time add a feature where it takes the number of calories you have left to not exceed your budget, and recommend food under that category
//if youre wondering why im not using multiline comments its because i dont feel like it

import SwiftUI

struct addfoodsheet: View {
    
    @State private var name = ""
    @State private var cals = Int()
    
    var body: some View {
            List{
                TextField("Enter the name of the food", text: $name)
                TextField("Enter the number of calories", value: $cals, format: .number)
                    .keyboardType(.numberPad)
                Button{
                    
                } label: {
                    Text("Enter")
                }
            }
    }
}

#Preview {
    addfoodsheet()
}
