//
//  EventsView.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 11.12.25.
//

import SwiftUI

struct EventsView: View {
    
    @State private var events: [Event] = Event.mockData
    
    var body: some View {
        
        NavigationStack {
            
            List {
                ForEach(events) { event in
                    NavigationLink {
                        EventForm(mode: .edit(event)) { updatedEvent in
                            if let index = events.firstIndex(where: { $0.id == updatedEvent.id }) {
                                events[index] = updatedEvent
                            }
                        }
                    } label: {
                        EventRow(event: event)
                    }
                    
                }
                .onDelete(perform: deleteEvent)
                
            }
            .navigationTitle("Events")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    NavigationLink {                        EventForm(mode: .add) { newEvent in
                            events.append(newEvent)
                        }
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    
    func deleteEvent(at offsets: IndexSet) {
        events.remove(atOffsets: offsets)
    }
}

#Preview {
    EventsView()
}
