//
//  Era.swift
//  
//
//  Created by Tiger Nixon on 4/7/23.
//

import Foundation

public struct Era {
    public let id: Int
    public let name: String
}

extension Era: Identifiable {
    
}

extension Era: Sendable {
    
}

extension Era: Hashable {
    public static func == (lhs: Era, rhs: Era) -> Bool {
        lhs.id == rhs.id
    }
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Era {
    public static func mock() -> Era {
        Era(id: 0, name: "Mesozoic")
    }
}
