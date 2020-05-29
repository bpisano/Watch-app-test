//
//  Models.swift
//  Watch app test WatchKit Extension
//
//  Created by Benjamin Pisano on 29/05/2020.
//  Copyright © 2020 Snopia. All rights reserved.
//

import UIKit

// MARK: - Trigonometry Unit -

enum TrigonometryUnit: Int, CaseIterable {
    
    case radians
    case degrees
        
}

extension TrigonometryUnit: Segmentable {
    
    var id: String {
        switch self {
        case .degrees:
            return "trigonometryUnit.degrees"
        case .radians:
            return "trigonometryUnit.radians"
        }
    }
    
    var title: String {
        switch self {
        case .degrees:
            return "Degrees"
        case .radians:
            return "Radians"
        }
    }
    
}

// MARK: - Decimal Separator -

enum DecimalSeparator: Int, CaseIterable {

    case defaultSeparator
    case dot
    case comma
    
}

extension DecimalSeparator: Segmentable {
    
    var id: String {
        switch self {
        case .defaultSeparator:
            return "decimalSeparator.default"
        case .dot:
            return "decimalSeparator.dot"
        case .comma:
            return "decimalSeparator.comma"
        }
    }
    
    var title: String {
        switch self {
        case .defaultSeparator:
            return "Default"
        case .dot:
            return "Dot"
        case .comma:
            return "Comma"
        }
    }
    
}

// MARK: - Exponent Symbol -

enum ExponentSymbol: Int, CaseIterable {

    case uppercased
    case lowercased
    
}

extension ExponentSymbol: Segmentable {
    
    var id: String {
        switch self {
        case .uppercased:
            return "exponentSymbol.E"
        case .lowercased:
            return  "exponentSymbol.e"
        }
    }
    
    var title: String {
        switch self {
        case .uppercased:
            return "E"
        case .lowercased:
            return  "e"
        }
    }
    
}

// MARK: - Grouping Separator -

enum GroupingSeparator: Int, CaseIterable {

    case defaultSeparator
    case space
    case comma
    
}

extension GroupingSeparator: Segmentable {
    
    var id: String {
        switch self {
        case .defaultSeparator:
            return "groupingSeparator.default"
        case .space:
            return "groupingSeparator.space"
        case .comma:
            return "groupingSeparator.comma"
        }
    }
    
    var title: String {
        switch self {
        case .defaultSeparator:
            return "Default"
        case .space:
            return "Space"
        case .comma:
            return "Comma"
        }
    }
    
}
