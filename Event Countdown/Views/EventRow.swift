//
//  EventRow.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 11.12.25.
//

import SwiftUI

struct EventRow: View {
    
    var event: Event
    let dateTimeFormatter: RelativeDateTimeFormatter = RelativeDateTimeFormatter()
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text(event.title)
                .font(.headline)
                .foregroundStyle(event.textColor)
    
            TimelineView(.periodic(from: .now, by: 60.0)){ _ in
                Text(dateTimeFormatter.localizedString(for: event.date, relativeTo: Date()))
            }
            
        }.padding(.vertical, 4)
        
    }
    
}


#Preview {
    EventRow(event: Event.mockData[15] )
}
