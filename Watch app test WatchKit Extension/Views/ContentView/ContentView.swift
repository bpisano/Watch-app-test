//
//  ContentView.swift
//  Watch app test WatchKit Extension
//
//  Created by Benjamin Pisano on 29/05/2020.
//  Copyright © 2020 Snopia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        List {
            PickerView<TrigonometryUnit>(title: "Trigonometry Units", selection: $viewModel.trigonometryUnitIndex, items: TrigonometryUnit.allCases)
            PickerView<DecimalSeparator>(title: "Decimal Separator", selection: $viewModel.decimalSeparatorIndex, items: DecimalSeparator.allCases)
            PickerView<GroupingSeparator>(title: "Grouping Separator", selection: $viewModel.groupingSeparatorIndex, items: GroupingSeparator.allCases)
            PickerView<ExponentSymbol>(title: "Exponent Symbol", selection: $viewModel.exponentSymbolIndex, items: ExponentSymbol.allCases)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}
