//
//  Home.swift
//  Group 1 Final project
//
//  Created by Anika P on 7/30/24.
//

import SwiftUI

struct Home: View {
    @State var currentDate: Date = Date()
    @State private var showNewTask = false
    
    @State private var event = ""

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                
                //Custom Date Picker
                CustomDatePicker(currentDate: $currentDate)
            }
            .padding(.vertical)
        }
        //Safe area view
        .safeAreaInset(edge: .bottom) {
            
            HStack {
                
                
                Button {
                    withAnimation {
                        self.showNewTask = true
                    print(TextField("Enter Event Here", text: $event))
                    }
                } label: {
                    Text("Add Event")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemOrange), in: Capsule())
                }
                
            }
            .padding(.horizontal)
            .padding(.top, 10)
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
            
        }
        
    }
}

#Preview {
    Home()
}
