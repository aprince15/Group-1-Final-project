//
//  CalendarView.swift
//  Group 1 Final project
//
//  Created by Anika P on 7/30/24.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        
        ZStack {
            Color(red: 253/255, green: 252/255, blue: 220/255)
                .ignoresSafeArea()
            Home()
        }
    }
}

#Preview {
    CalendarView()
}
