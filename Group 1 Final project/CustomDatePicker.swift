//
//  CustomDatePicker.swift
//  Group 1 Final project
//
//  Created by Anika P on 7/30/24.
//

import SwiftUI

struct CustomDatePicker: View {
    @Binding var currentDate: Date
    
    //Month update on arrow button clicks
    @State var currentMonth: Int = 0
    
    var body: some View {
        VStack (spacing: 35){
            
            // Days array
            let days: [String] = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
            
            
            HStack (spacing: 20){
                
                VStack (alignment: .leading, spacing: 10){
                    
                    Text(extraDate()[0])
                        .font(.caption)
                        .fontWeight(.semibold)
                    
                    Text(extraDate()[1])
                    .font(.title.bold())                }
                Spacer(minLength: 0)
                
                Button {
                    withAnimation {
                        currentMonth -= 1
                    }
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                }
                
                Button {
                    
                    withAnimation {
                        currentMonth += 1
                    }
                } label: {
                    Image(systemName: "chevron.right")
                        .font(.title2)
                }
                
                } //end of HStack
            .padding(.horizontal)
            
            //Day View
            HStack(spacing: 0){
                ForEach(days,id: \.self){day in
                    
                    Text(day)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                    
                }
            } //end of Day view HStack
            
            // Dates
            //Lazy grid
            let columns = Array(repeating: GridItem(.flexible()), count: 7)
            
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(extractDate()) {value in
                    
                    CardView(value: value)
                        .background(
                            
                            Capsule()
                                .fill(Color(red: 0/255, green: 175/255, blue: 185/255))
                                .padding(.horizontal, 8)
                                .opacity(isSameDay(date1: value.date, date2: currentDate) ? 1 : 0)
                        )
                        .onTapGesture {
                            currentDate = value.date
                        }
                
                }
            }
            
            VStack (spacing: 15) {
                
                Text("Events")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 20)
                
                if let task = tasks.first(where: { task in
                    return isSameDay(date1: task.taskDate, date2: currentDate)
                }) {
                    
                    ForEach(task.task) {
                        task in
                        
                        VStack (alignment: .leading, spacing: 10) {
                            
                            //For Custom Timing
                            Text(task.time.addingTimeInterval(CGFloat.random(in: 0...500)), style: .time)
                            
                            Text(task.title)
                                .font(.title2.bold())
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            
                            Color(red: 0/255, green: 175/255, blue: 185/255)
                                .opacity(0.5)
                                .cornerRadius(10)
                        )
                    }
                }
                else {
                    Text("No Events Found")
                }
            }
            .padding()
        } //end of VStack
        .onChange(of: currentMonth) {
            //updating month
            currentDate = getCurrentMonth()
        }
        
    }
    
    @ViewBuilder
    func CardView(value: DateValue) -> some View {
        VStack {
            if value.day != -1{

                if let task = tasks.first(where: { task in
                    
                    return isSameDay(date1: task.taskDate, date2: value.date)
                }){
                    Text("\(value.day)")
                        .font(.title3.bold())
                        .foregroundColor(isSameDay(date1: task.taskDate, date2: currentDate) ? .white : .primary)
                        .frame(maxWidth: .infinity)
                    
                    Spacer()
                    
                    Circle()
                        .fill(isSameDay(date1: task.taskDate, date2: currentDate) ? .white : Color(red: 0/255, green: 175/255, blue: 185/255))
                        .frame(width: 8, height: 8)
                }
                    else {
                        Text("\(value.day)")
                            .font(.title3.bold())
                        
                            .foregroundColor(isSameDay(date1: value.date, date2: currentDate) ? .white : .primary)
                            .frame(maxWidth: .infinity)
                        
                        Spacer()
                    }
                }
            }
        .padding(.vertical,8)
        .frame(height: 60,alignment: .top)
    }
    
    // checking dates
    func isSameDay(date1: Date, date2: Date) -> Bool{
        let calendar = Calendar.current
        
        return calendar.isDate(date1, inSameDayAs: date2)
    }
    
    //extracting Year and Month for display
    func extraDate()->[String] {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY MMMM"
        
        let date = formatter.string(from: currentDate)
        
        return date.components(separatedBy: " ")
    }
    
    func getCurrentMonth()->Date {
        
        let calendar = Calendar.current
        
        //Getting Current Month Date
        guard let currentMonth = calendar.date(byAdding: .month, value: self.currentMonth, to: Date()) else {
            return Date()
            
        }        
        return currentMonth
    }
    func extractDate()->[DateValue]{
        
        let calendar = Calendar.current
        
        //Getting Current Month Date
        let currentMonth = getCurrentMonth()
        
        var days =  currentMonth.getAllDates().compactMap { date -> DateValue in
            
            //getting day
            
            let day = calendar.component(.day, from: date)
            
            return DateValue(day: day, date: date)
        }
        
        // adding offset days to get exact week day
        let firstWeekday = calendar.component(.weekday, from: days.first?.date ?? Date())
        
        for _ in 0..<firstWeekday - 1 {
            days.insert(DateValue(day: -1, date: Date()), at: 0)
        }
        return days
    }
                
    }

#Preview {
    CalendarView()
}

// Extending Date to get Current Month Dates
extension Date{
    
    func getAllDates()->[Date] {
        
        let calendar = Calendar.current
        
        // getting start date
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year,.month], from: self))!
        
        let range = calendar.range(of: .day, in: .month, for: startDate)!
                
        //getting date
        return range.compactMap { day -> Date in
            
            return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
            
        }
    }
}
