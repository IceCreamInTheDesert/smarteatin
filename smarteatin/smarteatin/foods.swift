//
//  foods.swift
//  smarteatin
//
//  Created by Dhanush  on 9/9/24.
//

//tab for foods
//look at addfoodsheet for the recommendation suggestion
//well theres not much to talk about here its just a bunch of foods
//and make the plus button access addfood sheet through .sheet

import SwiftUI

struct foods: View {
    
    @State private var searchFoods = ""
    @State private var foods = []
    @State private var showFoodSheet = false
    
    var body: some View {
        NavigationStack{
            VStack{
                
            }
            .toolbar {
                Button{
                    showFoodSheet.toggle()
                } label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $showFoodSheet, content: {
                    addfoodsheet()
                })
                .presentationDetents([.fraction(0.2)])
                .presentationDragIndicator(.hidden)
                .navigationTitle("Foods")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        .searchable(text: $searchFoods)
    }
}

#Preview {
    foods()
}
