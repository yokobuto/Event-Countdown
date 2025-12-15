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
                ForEach(events.sorted()) { event in
                    NavigationLink(value: FormMode.edit(event)) {
                        EventRow(event: event)
                    }
                }
                .onDelete(perform: deleteEvent)
            }
            .navigationTitle("Events")
            .navigationDestination(for: FormMode.self){ mode in
                
                EventForm(mode: mode) { updatedEvent in
                    
                    switch mode{
                        
                    case .add:
                        events.append(updatedEvent)
                    case .edit(let originalEvent):
                        if let index = events.firstIndex(where: { $0.id == originalEvent.id}){
                            events[index] = updatedEvent
                        }
                    
                        
                    }
                    
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    
                    NavigationLink(value: FormMode.add){
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
