//
//  Event+Extension.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 14.12.25.
//

import Foundation
import SwiftUI


extension Event {
    
    static let mockData: [Event] = [
        Event(id: UUID(), title: "Morning Coffee", date: Date.from("14.12.2025 08:30") ?? Date(), textColor: .orange),
        Event(id: UUID(), title: "Team Standup", date: Date.from("14.12.2025 10:00") ?? Date(), textColor: .blue),
        Event(id: UUID(), title: "Lunch with Sarah", date: Date.from("14.12.2025 12:30") ?? Date(), textColor: .green),
        Event(id: UUID(), title: "Call Mom", date: Date.from("10.12.2025 18:00") ?? Date(), textColor: .pink),
        Event(id: UUID(), title: "Dentist Appointment", date: Date.from("01.11.2025 09:00") ?? Date(), textColor: .red),
        Event(id: UUID(), title: "Returned Library Books", date: Date.from("15.10.2025 14:00") ?? Date(), textColor: .gray),
        Event(id: UUID(), title: "Gym Session: Legs", date: Date.from("20.11.2025 17:30") ?? Date(), textColor: .purple),
        Event(id: UUID(), title: "Car Service", date: Date.from("05.08.2025 08:00") ?? Date(), textColor: .red),
        Event(id: UUID(), title: "Watched Movie", date: Date.from("13.12.2025 20:15") ?? Date(), textColor: .mint),
        Event(id: UUID(), title: "Learn Swift Basics", date: Date.from("01.01.2024 10:00") ?? Date(), textColor: .orange),
        Event(id: UUID(), title: "Grocery Shopping", date: Date.from("14.12.2025 17:00") ?? Date(), textColor: .primary),
        Event(id: UUID(), title: "Project Deadline", date: Date.from("16.12.2025 23:59") ?? Date(), textColor: .red),
        Event(id: UUID(), title: "Yoga Class", date: Date.from("17.12.2025 18:00") ?? Date(), textColor: .teal),
        Event(id: UUID(), title: "Date Night", date: Date.from("19.12.2025 19:30") ?? Date(), textColor: .pink),
        Event(id: UUID(), title: "Weekly Review", date: Date.from("21.12.2025 16:00") ?? Date(), textColor: .blue),
        Event(id: UUID(), title: "Clean Apartment", date: Date.from("20.12.2025 10:00") ?? Date(), textColor: .gray),
        Event(id: UUID(), title: "Client Presentation", date: Date.from("22.12.2025 14:00") ?? Date(), textColor: .blue),
        Event(id: UUID(), title: "Code Review", date: Date.from("15.12.2025 11:00") ?? Date(), textColor: .orange),
        Event(id: UUID(), title: "Fix Bugs", date: Date.from("15.12.2025 13:00") ?? Date(), textColor: .red),
        Event(id: UUID(), title: "Write Documentation", date: Date.from("23.12.2025 09:00") ?? Date(), textColor: .secondary),
        Event(id: UUID(), title: "Update iOS", date: Date.from("14.12.2025 22:00") ?? Date(), textColor: .primary),
        Event(id: UUID(), title: "Email Catch-up", date: Date.from("15.12.2025 08:00") ?? Date(), textColor: .blue),
        Event(id: UUID(), title: "Networking Event", date: Date.from("28.12.2025 18:30") ?? Date(), textColor: .indigo),

        Event(id: UUID(), title: "Buy Birthday Gift", date: Date.from("27.12.2025 12:00") ?? Date(), textColor: .pink),
        Event(id: UUID(), title: "Flight to London", date: Date.from("05.01.2026 06:45") ?? Date(), textColor: .blue),
        Event(id: UUID(), title: "Concert Tickets Sale", date: Date.from("10.01.2026 09:00") ?? Date(), textColor: .purple),
        Event(id: UUID(), title: "Football Game", date: Date.from("15.01.2026 15:30") ?? Date(), textColor: .green),
        Event(id: UUID(), title: "Visit Grandparents", date: Date.from("02.02.2026 14:00") ?? Date(), textColor: .orange),
        Event(id: UUID(), title: "New Netflix Series", date: Date.from("14.12.2025 20:00") ?? Date(), textColor: .red),
        Event(id: UUID(), title: "Haircut", date: Date.from("30.12.2025 15:00") ?? Date(), textColor: .brown),
        Event(id: UUID(), title: "Walk the Dog", date: Date.from("14.12.2025 16:30") ?? Date(), textColor: .mint),
        
        Event(id: UUID(), title: "Tax Return Due", date: Date.from("31.05.2026 23:59") ?? Date(), textColor: .red),
        Event(id: UUID(), title: "Summer Vacation", date: Date.from("15.07.2026 10:00") ?? Date(), textColor: .yellow),
        Event(id: UUID(), title: "Wedding Anniversary", date: Date.from("20.08.2026 00:00") ?? Date(), textColor: .pink),
        Event(id: UUID(), title: "Renew Passport", date: Date.from("10.03.2026 09:00") ?? Date(), textColor: .primary),
        Event(id: UUID(), title: "Christmas Party", date: Date.from("24.12.2026 18:00") ?? Date(), textColor: .green),
    
        Event(id: UUID(), title: "Pick up Package", date: Date.from("15.12.2025 17:45") ?? Date(), textColor: .blue),
        Event(id: UUID(), title: "Water Plants", date: Date.from("16.12.2025 08:00") ?? Date(), textColor: .green),
        Event(id: UUID(), title: "Pay Electricity Bill", date: Date.from("01.01.2026 12:00") ?? Date(), textColor: .red),
        Event(id: UUID(), title: "Read Chapter 4", date: Date.from("14.12.2025 21:00") ?? Date(), textColor: .secondary),
        Event(id: UUID(), title: "Backup Computer", date: Date.from("18.12.2025 20:00") ?? Date(), textColor: .gray),
        Event(id: UUID(), title: "Cook Dinner", date: Date.from("14.12.2025 19:00") ?? Date(), textColor: .yellow),
        Event(id: UUID(), title: "Meditation", date: Date.from("15.12.2025 07:00") ?? Date(), textColor: .purple),
        Event(id: UUID(), title: "Order Pizza", date: Date.from("19.12.2025 19:00") ?? Date(), textColor: .red),
        Event(id: UUID(), title: "Sleep in", date: Date.from("20.12.2025 09:30") ?? Date(), textColor: .indigo),
        Event(id: UUID(), title: "Charge Camera", date: Date.from("14.12.2025 23:00") ?? Date(), textColor: .black),
        Event(id: UUID(), title: "Plan Weekend", date: Date.from("18.12.2025 18:00") ?? Date(), textColor: .blue),
        Event(id: UUID(), title: "Check Stocks", date: Date.from("15.12.2025 15:30") ?? Date(), textColor: .green),
        Event(id: UUID(), title: "Write Journal", date: Date.from("14.12.2025 22:30") ?? Date(), textColor: .brown),
        Event(id: UUID(), title: "Finish Swift Tutorial", date: Date.from("30.01.2026 12:00") ?? Date(), textColor: .orange)
    ]
}
