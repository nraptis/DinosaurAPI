//
//  Period.swift
//  
//
//  Created by Tiger Nixon on 4/7/23.
//

import Foundation

public struct Period {
    public let id: Int
    public let name: String
    public let timeSpan: String
    public let era: Era
}

extension Period: Identifiable {
    
}

extension Period: Sendable {
    
}

extension Period {
    public static func mock() -> Period {
        let era = Era(id: 0, name: "Mesozoic")
        return Period(id: 2, name: "Cretacious Period", timeSpan: "145.0 to 66.0 MYA", era: era)
    }
}
