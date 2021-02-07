//
//  Double.swift
//  Budget
//
//  Created by Leonardo Durazo on 07/02/21.
//

import Foundation

extension Double {
    // Change this to another locale if you want to force a specific locale, otherwise this is redundant as the current locale is the default already
    var asCurrency: String {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .currency
       return formatter.string(from: self as NSNumber) ?? "Error"
    }
}
