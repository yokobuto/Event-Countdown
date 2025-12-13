//
//  Date+Extension.swift
//  Event Countdown
//
//  Created by Jörg Klausewitz on 13.12.25.
//

import SwiftUI

extension Date {

        static func from(_ string: String, format: String = "dd.MM.yyyy HH:mm") -> Date? {
            let formatter = DateFormatter()
            formatter.dateFormat = format
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.timeZone = TimeZone.current
            return formatter.date(from: string)
        }
    
}
