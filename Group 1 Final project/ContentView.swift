//
//  ContentView.swift
//  Group 1 Final project
//
//  Created by Anika P on 7/26/24.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
    
            NavigationStack {
                ZStack{
                    Color(red: 253/255,green: 252/255,blue: 220/255)
                        .ignoresSafeArea()
                    
                    VStack(alignment: .center){
                        
                            Text("")
                        Text("")
                      Text("Welcome to")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0/255,green: 128/255,blue: 167/255))
                        Text("Productivity Pal!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0/255,green: 128/255,blue: 167/255))
                        
                        Image("Logo")
                        
                       // let motivQuotes = ["Consistency is key.", "Don't wish for it, work for it.", "The future depends on what you do today.", "Focus on progress, not perfection.", "Study, believe, achieve."]
                       // let printedQuoteNum = Int.random(in: 0..<motivQuotes.count + 1)
                        //let printedQuote = motivQuotes[printedQuoteNum]
                        Text("Consistency is key.")
                            .foregroundColor(Color(red: 0/255,green: 128/255,blue: 167/255))
                            .font(.title)
                            .padding(.vertical)
                            .multilineTextAlignment(.center)
                        Text("")
                        Text("")
                    
                        HStack {
                            NavigationLink(destination: JournalView()) {
                                Text("Journal")
                                    .font(.title2)
                                    .navigationTitle("Home").navigationBarTitleDisplayMode(.inline).navigationBarHidden(true)
                            }
                            .padding(15)
                            .background(Color(red: 240/255, green: 113/255, blue: 103/255))
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(10)

                            NavigationLink(destination: CalendarView()) {
                                Text("Calendar")
                                    .font(.title2)
                                    .navigationTitle("Home").navigationBarTitleDisplayMode(.inline).navigationBarHidden(true)
                            }
                            .padding(15)
                            .background(Color(red: 240/255, green: 113/255, blue: 103/255))
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(10)
                            
                            NavigationLink(destination: ToDoView()) {
                                Text("To-Do List")
                                    .font(.title2)
                                    .navigationTitle("Home").navigationBarTitleDisplayMode(.inline).navigationBarHidden(true)
                            }
                            .padding(15)
                            .background(Color(red: 240/255, green: 113/255, blue: 103/255))
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(10)

                        }
                        .padding()
                    }
                }
            }
    }
}
#Preview {
    ContentView()
}
