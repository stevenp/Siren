//
//  SirenDateExtension.swift
//  SirenExample
//
//  Created by Arthur Sabintsev on 3/21/17.
//  Copyright © 2017 Sabintsev iOS Projects. All rights reserved.
//

import Foundation

// MARK: - Date Extension for Siren

extension Date {
    static func days(since date: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: date, to: Date())
        return components.day ?? 0
    }

    static func fromString(_ dateString: String) -> Date? {
        let dateformatter = DateFormatter()
        dateformatter.locale = Locale(identifier: "en_US_POSIX")
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        
        return dateformatter.date(from: dateString)
    }
    
    static func days(since dateString: String) -> Int? {
        guard let date = Date.fromString(dateString) else {
            return nil
        }
        return days(since: date)
    }
}
