//
//  Event.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 11.12.25.
//
import Foundation
import SwiftUI

struct Event: Comparable, Identifiable, Hashable {
    
    var id: UUID
    var title: String
    var date: Date
    var textColor: Color

    static func < (lhs: Event, rhs: Event) -> Bool {
        return lhs.date < rhs.date
    }
    
    static func == (lhs: Event, rhs: Event) -> Bool {
        return lhs.id == rhs.id &&
        lhs.title == rhs.title &&
        lhs.date == rhs.date &&
        lhs.textColor == rhs.textColor
    }
    
}

