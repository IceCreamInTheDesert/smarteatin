//
//  foods.swift
//  smarteatin
//
//  Created by Dhanush  on 9/9/24.
//

import SwiftUI

struct foods: View {
    
    @State private var searchFoods = ""
    @State private var foods = []
    
    var body: some View {
        NavigationStack{
            VStack{
                
            }
            .toolbar {
                Button{
                    print("button tapped")
                } label: {
                    Image(systemName: "plus")
                }
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
