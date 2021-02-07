//
//  Expense+Type.swift
//  Budget
//
//  Created by Leonardo Durazo on 07/02/21.
//

import Foundation

typealias ExpType = Expense.Division

extension Expense {
    enum Division: RawRepresentable {
        
        init?(rawValue: String) { return nil }
        
        case groceries
        case gas
        case beer
        case party
        case gift(for: Person?)
        case other(value: String?)
        
        var rawValue: String {
            switch self {
            case .groceries:
                return "groceries"
            case .gas:
                return "gas"
            case .beer:
                return "beer"
            case .party:
                return "party"
            case .gift(let person):
                guard let person = person else {
                    return "Gift"
                }
                return "Gift for \(person.name)"
            case .other(let value):
                guard let value = value else {
                    return "Other"
                }
                return value
            }
        }
    }
}
