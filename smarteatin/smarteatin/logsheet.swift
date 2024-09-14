//
//  logsheet.swift
//  smarteatin
//
//  Created by Dhanush  on 13/9/24.
//

import SwiftUI

struct logsheet: View {
    
    @State private var logNameField = ""
    
    var body: some View {
        List{
            TextField("Enter calories consumed", text: $logNameField)
                .padding()
        }
    }
}

#Preview {
    logsheet()
}
