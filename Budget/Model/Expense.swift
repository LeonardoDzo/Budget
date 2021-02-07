//
//  Expense.swift
//  Budget
//
//  Created by Leonardo Durazo on 07/02/21.
//

import Foundation

struct Expense {
    var id: UUID
    var amount: Double
    var title: String?
    var types: [ExpType]
    var date: Int
    
    var allTypes: String {
        types.map({ $0.rawValue }).joined(separator: ", ")
    }
}

extension Expense {
    static let `default` = Expense(id: .init(),
                                   amount: 200.0,
                                   title: "Mother's birth",
                                   types: [.gift(for: .rosaura)],
                                   date: 1612724651)
}
