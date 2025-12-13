//
//  EventsView.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 11.12.25.
//

import SwiftUI

struct EventsView: View {
    
    
    @State private var events: [Event] = Event.mockData
    
    var mockData = Event.mockData
    
    var body: some View {
        
        NavigationStack{
            
            List{
                
                ForEach(events){ event in
                    
                    NavigationLink(destination: EventForm(title: event.title, date: event.date, textColor: event.textColor)) {
                        EventRow(event: event)
                    }
                    
                }.onDelete( perform: deleteEvent )
                
                
                
            }
            .navigationTitle("Events List")
            .toolbar{
                Button("+") {}
                }
                
        }
        
    }
    
    
    func deleteEvent(at offsets: IndexSet ) {
        
        events.remove(atOffsets: offsets)
        
        
    }
}

            
            
#Preview {
    EventsView()
}
