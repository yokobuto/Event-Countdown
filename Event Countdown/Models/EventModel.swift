//
//  EventModel.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 21.05.25.
//

struct EventModel: Codable{
    
    
    var id: UUID
    var title: String
    var date: Date
    var textColor: Color
    
    
}
