//
//  EventForm.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 12.12.25.
//

import SwiftUI

enum FormMode {
    case add
    case edit(Event)
}

struct EventForm: View {
    
    let mode: FormMode
    let onSave: (Event) -> Void
    
    @State private var title: String
    @State private var date: Date
    @State private var textColor: Color
    @Environment(\.dismiss) var dismiss

    init(mode: FormMode, onSave: @escaping (Event) -> Void) {
        self.mode = mode
        self.onSave = onSave
        
        switch mode {
        case .add:
            _title = State(initialValue: "")
            _date = State(initialValue: Date())
            _textColor = State(initialValue: .black)
            
        case .edit(let event):
            _title = State(initialValue: event.title)
            _date = State(initialValue: event.date)
            _textColor = State(initialValue: event.textColor)
        }
    }
    
    var body: some View {
        Form {
            Section {
                TextField("event_form_title_placeholder", text: $title)
                DatePicker("event_form_date_label", selection: $date)
                ColorPicker("event_form_color_label", selection: $textColor)
            }
        }
        .navigationTitle(navigationTitle)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("event_form_save_button") {
                    saveEvent()
                }
                .disabled(title.isEmpty)
            }
        }
    }

    var navigationTitle: String {
        switch mode {
        case .add:
            return String(localized: "event_form_mode_add")
        case .edit:
            return String(localized: "event_form_mode_edit_prefix")
        }
    }
    
    func saveEvent() {
        let id: UUID
        switch mode {
        case .add:
            id = UUID()
        case .edit(let event):
            id = event.id
        }
        let finalEvent = Event(id: id, title: title, date: date, textColor: textColor)
        onSave(finalEvent)
        dismiss()
    }
    
}
