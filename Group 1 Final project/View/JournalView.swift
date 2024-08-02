//
//  JournalView.swift
//  Group 1 Final project
//
//  Created by Anika P on 8/1/24.
//

import SwiftUI
struct JournalView: View {
    @State private var journalEntry1 = ""
    @State private var journalEntry2 = ""
    @State private var journalEntry3 = ""
    var body: some View {
        ZStack{
            Color(red: 253/255, green: 252/255, blue: 220/255)
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                  
                    Text("Journal")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(red: 0, green: 128/255, blue: 167/255, opacity: 1.0))
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Rectangle().frame(width: 300.0).foregroundColor(Color(red: 254/255,green: 217/255,blue: 183/255)))
                        
                         .cornerRadius(10)
                }
                
// ----------------------------
                Text("This week...")
                    .font(.headline)
                    .foregroundColor(Color(red: 240/255,green: 112/255,blue: 103/255))
                    .padding(.top)
                
                    TextEditor(text:$journalEntry1)
                        .foregroundColor(Color(red: 240/255, green: 112/255, blue: 103/255))
                        .border(Color(red: 0, green: 128/255, blue: 167/255), width: 3)
                        .padding()
                        .accentColor(.pink)
// ------------------------------
                    Text("In the moment I am...")
                        .font(.headline)
                        .foregroundColor(Color(red: 240/255,green: 112/255,blue: 103/255))
  
                TextEditor(text: $journalEntry2)
                    .foregroundColor(Color(red: 240/255, green: 112/255, blue: 103/255))
                    .border(Color(red: 0, green: 128/255, blue: 167/255), width: 3)
                    .accentColor(.pink)
                    .padding()
// ------------------------------
                Text("I can grow by...")
                    .font(.headline)
                    .foregroundColor(Color(red: 240/255,green: 112/255,blue: 103/255))
                
                TextEditor(text: $journalEntry3)
                    .foregroundColor(Color(red: 240/255, green: 112/255, blue: 103/255))
                    .border(Color(red: 0, green: 128/255, blue: 167/255), width: 3)
                    .accentColor(.pink)
                    .padding()
                
                
                        
                }
              
                    
                
            }
            
        }
    }
#Preview {
    JournalView()
}
