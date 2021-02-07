//
//  Int.swift
//  Budget
//
//  Created by Leonardo Durazo on 07/02/21.
//

import Foundation

enum DateFormat: String {
    case ddmmyyyy = "dd MM yyyy"
    case fullDate = "EEEE, MMM d, yyyy"
}

extension Int {
    var asDate: Date {
        Date(timeIntervalSince1970: TimeInterval(self))
    }
    
    func asDateString(as format: DateFormat) -> String {
        let date = self.asDate
        let formatter = DateFormatter()
        formatter.dateFormat = format.rawValue
        return formatter.string(from: date)
    }
}
