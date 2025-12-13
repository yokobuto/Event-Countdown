//
//  EventForm.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 12.12.25.
//

import SwiftUI

struct EventForm: View {
    
    @State private var title: String
    @State private var date: Date
    @State private var textColor: Color
    
    init(title: String, date: Date, textColor: Color) {
        _title = State(initialValue: title)
        _date = State(initialValue: date)
        _textColor = State(initialValue: textColor)
    }
    
    var body: some View {
        
        Form {
            Section{
                TextField("Bitte geben Sie einen Titel ein", text: $title)
                DatePicker("Datum", selection: $date)
                ColorPicker("Textfarbe", selection: $textColor)
            }
        }
        
        Button("Speichern"){
            
        }
        
        
    
        
    }
}

#Preview {
    EventForm(title: "Test", date: Date(), textColor: Color.red)
}
