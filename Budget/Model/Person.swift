//
//  Person.swift
//  Budget
//
//  Created by Leonardo Durazo on 07/02/21.
//

import Foundation

struct Person {
    enum Relationship {
        case myself
        case mother
        case father
        case sister
        case brother
        case girlfirend
        case friend
        case other(value: String?)
    }
    
    enum Gender {
        case male
        case female
        case other(value: String?)
    }
    
    var name: String
    var gender: Gender
    var relationship: Relationship
}

extension Person {
    static let myself = Person(name: "Leonardo Durazo",
                               gender: .male,
                               relationship: .myself)
    
    static let karina = Person(name: "Karina Durazo",
                               gender: .female,
                               relationship: .sister)
    
    static let rosaura = Person(name: "Rosaura Durán",
                               gender: .female,
                               relationship: .mother)
}
