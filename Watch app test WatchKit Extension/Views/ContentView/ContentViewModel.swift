//
//  ContentViewModel.swift
//  Watch app test WatchKit Extension
//
//  Created by Benjamin Pisano on 29/05/2020.
//  Copyright © 2020 Snopia. All rights reserved.
//

import SwiftUI
import Combine

final class ContentViewModel: ObservableObject {
    
    @Published var trigonometryUnitIndex: Int = 0
    @Published var decimalSeparatorIndex: Int = 0
    @Published var groupingSeparatorIndex: Int = 0
    @Published var exponentSymbolIndex: Int = 0
        
}
